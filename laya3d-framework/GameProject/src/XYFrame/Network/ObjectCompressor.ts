/**
 * @ Author: XXL
 * @ Date: 2026-01-21 15:42
 * @ Description: LZ77数据压缩解压器，支持Object和Uint8Array的压缩解压，针对大数据量优化
*/
export default class ObjectCompressor {
    // LZ77算法参数 - 静态变量
    private static readonly WINDOW_SIZE = 32768;      // 滑动窗口大小 (32KB)
    private static readonly MIN_MATCH_LENGTH = 3;      // 最小匹配长度
    private static readonly MAX_MATCH_LENGTH = 258;    // 最大匹配长度

    // 文件格式常量 - 静态变量
    private static readonly MAGIC_HEADER = 0x5843454C; // "XCEL" 魔数 (0x58='X', 0x43='C', 0x45='E', 0x4C='L')
    private static readonly VERSION = 0x0001;          // 版本号

    /**
     * 计算CRC32校验和
     * @param data 数据
     * @returns CRC32值（无符号32位整数）
     */
    private static _calculateCRC32(data: Uint8Array): number {
        const crc32Table = new Uint32Array(256);
        for (let i = 0; i < 256; i++) {
            let c = i;
            for (let j = 0; j < 8; j++) {
                c = (c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1);
            }
            crc32Table[i] = c;
        }

        let crc = 0xFFFFFFFF;
        for (let i = 0; i < data.length; i++) {
            crc = crc32Table[(crc ^ data[i]) & 0xFF] ^ (crc >>> 8);
        }
        // 确保返回无符号32位整数
        return (crc ^ 0xFFFFFFFF) >>> 0;
    }

    /**
     * 查找最长匹配
     * @param data 数据
     * @param pos 当前位置
     * @param windowStart 窗口开始位置
     * @returns 匹配信息 {length, distance}
     */
    private static _findLongestMatch(data: Uint8Array, pos: number, windowStart: number): { length: number; distance: number } {
        if (DEBUG) {
            let bestLength = 0;
            let bestDistance = 0;
            const maxSearch = Math.min(pos - windowStart, ObjectCompressor.WINDOW_SIZE);

            // 从最近的位置开始搜索
            for (let i = 1; i <= maxSearch; i++) {
                const matchPos = pos - i;
                let matchLength = 0;

                // 计算匹配长度
                const maxMatch = Math.min(
                    ObjectCompressor.MAX_MATCH_LENGTH,
                    data.length - pos,
                    data.length - matchPos
                );

                while (matchLength < maxMatch &&
                    data[pos + matchLength] === data[matchPos + matchLength]) {
                    matchLength++;
                }

                if (matchLength > bestLength && matchLength >= ObjectCompressor.MIN_MATCH_LENGTH) {
                    bestLength = matchLength;
                    bestDistance = i;
                }
            }

            return { length: bestLength, distance: bestDistance };
        }
    }

    /**
     * LZ77压缩核心算法
     * @param data 原始数据
     * @returns 压缩后的数据
     */
    private static _compressLZ77(data: Uint8Array): Uint8Array {
        if (DEBUG) {
            const compressed: number[] = [];
            let pos = 0;

            while (pos < data.length) {
                const windowStart = Math.max(0, pos - ObjectCompressor.WINDOW_SIZE);
                const match = ObjectCompressor._findLongestMatch(data, pos, windowStart);

                if (match.length >= ObjectCompressor.MIN_MATCH_LENGTH && match.distance <= 32767) {
                    // 编码匹配信息 (距离, 长度)
                    compressed.push(0x80 | ((match.distance >> 8) & 0x7F)); // 标记位 + 距离高7位
                    compressed.push(match.distance & 0xFF); // 距离低8位
                    compressed.push(match.length - ObjectCompressor.MIN_MATCH_LENGTH); // 长度偏移
                    pos += match.length;
                } else {
                    // 直接存储字节
                    const byte = data[pos];
                    if (byte & 0x80) {
                        // 高位字节需要转义：使用0x7F作为转义标记
                        compressed.push(0x7F); // 转义标记
                        compressed.push(byte); // 原始字节
                    } else if (byte === 0x7F) {
                        // 0x7F本身也需要转义
                        compressed.push(0x7F); // 转义标记
                        compressed.push(0x7F); // 原始0x7F
                    } else {
                        // 普通字节直接存储
                        compressed.push(byte);
                    }
                    pos++;
                }
            }

            return new Uint8Array(compressed);
        }
    }

    /**
     * LZ77解压缩核心算法 - 高性能优化版本
     * @param compressed 压缩数据
     * @returns 解压后的数据
     */
    private static _decompressLZ77(compressed: Uint8Array): Uint8Array {
        // 预估解压后大小，减少内存重分配
        let estimatedSize = compressed.length * 4; // 保守估计
        let decompressed = new Uint8Array(estimatedSize);
        let decompressedPos = 0;
        let pos = 0;

        const compressedLength = compressed.length;

        while (pos < compressedLength) {
            const byte = compressed[pos];

            if (byte & 0x80) {
                // 匹配数据
                if (pos + 2 >= compressedLength) {
                    throw new Error('解压错误：压缩数据不完整');
                }

                const distance = ((byte & 0x7F) << 8) | compressed[pos + 1];
                const length = compressed[pos + 2] + ObjectCompressor.MIN_MATCH_LENGTH;

                // 检查是否需要扩容
                if (decompressedPos + length > decompressed.length) {
                    const newSize = Math.max(decompressed.length * 2, decompressedPos + length);
                    const newDecompressed = new Uint8Array(newSize);
                    newDecompressed.set(decompressed.subarray(0, decompressedPos));
                    decompressed = newDecompressed;
                }

                const start = decompressedPos - distance;
                if (start < 0) {
                    throw new Error(`解压错误：距离超出范围 (distance: ${distance}, decompressedPos: ${decompressedPos})`);
                }

                // 优化的复制逻辑 - 处理重叠情况
                if (distance >= length) {
                    // 无重叠，可以直接复制
                    decompressed.set(decompressed.subarray(start, start + length), decompressedPos);
                } else {
                    // 有重叠，逐字节复制
                    for (let i = 0; i < length; i++) {
                        decompressed[decompressedPos + i] = decompressed[start + i];
                    }
                }

                decompressedPos += length;
                pos += 3;
            } else {
                // 直接数据
                // 检查是否需要扩容
                if (decompressedPos >= decompressed.length) {
                    const newSize = decompressed.length * 2;
                    const newDecompressed = new Uint8Array(newSize);
                    newDecompressed.set(decompressed);
                    decompressed = newDecompressed;
                }

                if (byte === 0x7F && pos + 1 < compressedLength) {
                    // 转义的高位字节
                    decompressed[decompressedPos++] = compressed[pos + 1];
                    pos += 2;
                } else {
                    // 普通字节
                    decompressed[decompressedPos++] = byte;
                    pos++;
                }
            }
        }

        // 返回精确大小的数组
        return decompressed.subarray(0, decompressedPos);
    }

    /**
     * 将Object转换为Uint8Array，使用高效的二进制序列化
     * @param obj 对象
     * @returns 字节数组
     */
    private static _objectToUint8Array(obj:any): Uint8Array {
        if (DEBUG) {
            const buffer: number[] = [];
            ObjectCompressor._serializeValue(obj, buffer);
            return new Uint8Array(buffer);
        }
    }

    /**
     * 高效的二进制序列化
     * @param value 要序列化的值
     * @param buffer 输出缓冲区
     */
    private static _serializeValue(value:any, buffer: number[]): void {
        if (DEBUG) {

            if (value === null) {
                buffer.push(0x00); // NULL
            } else if (value === undefined) {
                buffer.push(0x01); // UNDEFINED
            } else if (typeof value === 'boolean') {
                buffer.push(value ? 0x02 : 0x03); // TRUE/FALSE
            } else if (typeof value === 'number') {
                if (Number.isInteger(value) && value >= -2147483648 && value <= 2147483647) {
                    // 32位整数
                    buffer.push(0x04);
                    ObjectCompressor._writeInt32(buffer, value);
                } else {
                    // 64位浮点数
                    buffer.push(0x05);
                    ObjectCompressor._writeFloat64(buffer, value);
                }
            } else if (typeof value === 'string') {
                const strBytes = ObjectCompressor._utf8Encode(value);
                if (strBytes.length < 256) {
                    buffer.push(0x06); // 短字符串
                    buffer.push(strBytes.length);
                } else {
                    buffer.push(0x07); // 长字符串
                    ObjectCompressor._writeUint32(buffer, strBytes.length);
                }
                buffer.push(...strBytes);
            } else if (value instanceof Uint8Array) {
                buffer.push(0x08); // Uint8Array
                ObjectCompressor._writeUint32(buffer, value.length);
                // 安全地写入大型Uint8Array
                ObjectCompressor._writeLargeUint8Array(buffer, value);
            } else if (Array.isArray(value)) {
                buffer.push(0x09); // Array
                ObjectCompressor._writeUint32(buffer, value.length);
                for (const item of value) {
                    ObjectCompressor._serializeValue(item, buffer);
                }
            } else if (typeof value === 'object') {
                const keys = Object.keys(value);
                buffer.push(0x0A); // Object
                ObjectCompressor._writeUint32(buffer, keys.length);
                for (const key of keys) {
                    // 序列化键
                    const keyBytes = ObjectCompressor._utf8Encode(key);
                    if (keyBytes.length < 256) {
                        buffer.push(keyBytes.length);
                    } else {
                        buffer.push(0xFF);
                        ObjectCompressor._writeUint32(buffer, keyBytes.length);
                    }
                    buffer.push(...keyBytes);
                    // 序列化值
                    ObjectCompressor._serializeValue(value[key], buffer);
                }
            } else {
                // 未知类型，转为字符串
                buffer.push(0x0B);
                const strBytes = ObjectCompressor._utf8Encode(String(value));
                ObjectCompressor._writeUint32(buffer, strBytes.length);
                buffer.push(...strBytes);
            }
        }
    }

    /**
     * 安全地写入大型Uint8Array，避免栈溢出
     * @param buffer 输出缓冲区
     * @param value 要写入的Uint8Array
     */
    private static _writeLargeUint8Array(buffer: number[], value: Uint8Array): void {
        if (DEBUG) {
            if (value.length > 100000) {
                // 分批添加，避免spread operator导致的栈溢出
                const chunkSize = 50000;
                for (let i = 0; i < value.length; i += chunkSize) {
                    const end = Math.min(i + chunkSize, value.length);
                    for (let j = i; j < end; j++) {
                        buffer.push(value[j]);
                    }
                }
            } else {
                // 小数组可以直接使用spread operator
                buffer.push(...value);
            }
        }
    }

    /**
     * 写入32位有符号整数（小端序）
     */
    private static _writeInt32(buffer: number[], value: number): void {
        if (DEBUG) {
            buffer.push(value & 0xFF);
            buffer.push((value >> 8) & 0xFF);
            buffer.push((value >> 16) & 0xFF);
            buffer.push((value >> 24) & 0xFF);
        }
    }

    /**
     * 写入32位无符号整数（小端序）
     */
    private static _writeUint32(buffer: number[], value: number): void {
        if (DEBUG) {
            buffer.push(value & 0xFF);
            buffer.push((value >>> 8) & 0xFF);
            buffer.push((value >>> 16) & 0xFF);
            buffer.push((value >>> 24) & 0xFF);
        }
    }

    /**
     * 写入64位浮点数（小端序）
     */
    private static _writeFloat64(buffer: number[], value: number): void {
        if (DEBUG) {
            const view = new DataView(new ArrayBuffer(8));
            view.setFloat64(0, value, true); // 小端序
            for (let i = 0; i < 8; i++) {
                buffer.push(view.getUint8(i));
            }
        }
    }

    /**
     * 将Uint8Array转换为Object，使用高效的二进制反序列化
     * @param uint8Array 字节数组
     * @returns 对象
     */
    private static _uint8ArrayToObject(uint8Array: Uint8Array): any {
        const reader = { data: uint8Array, pos: 0 };
        return ObjectCompressor._deserializeValue(reader);
    }

    /**
     * 高效的二进制反序列化 - 优化版本
     * @param reader 读取器 {data: Uint8Array, pos: number}
     * @returns 反序列化的值
     */
    private static _deserializeValue(reader: { data: Uint8Array; pos: number }) {
        if (reader.pos >= reader.data.length) {
            throw new Error('反序列化错误：数据不完整');
        }

        const type = reader.data[reader.pos++];

        switch (type) {
            case 0x00: return null;
            case 0x01: return undefined;
            case 0x02: return true;
            case 0x03: return false;
            case 0x04: return ObjectCompressor._readInt32Fast(reader);
            case 0x05: return ObjectCompressor._readFloat64Fast(reader);
            case 0x06: {
                const len = reader.data[reader.pos++];
                return ObjectCompressor._readStringFast(reader, len);
            }
            case 0x07: {
                const len = ObjectCompressor._readUint32Fast(reader);
                return ObjectCompressor._readStringFast(reader, len);
            }
            case 0x08: {
                const len = ObjectCompressor._readUint32Fast(reader);
                return ObjectCompressor._readUint8ArrayFast(reader, len);
            }
            case 0x09: {
                const len = ObjectCompressor._readUint32Fast(reader);
                return ObjectCompressor._readArrayFast(reader, len);
            }
            case 0x0A: {
                const len = ObjectCompressor._readUint32Fast(reader);
                return ObjectCompressor._readObjectFast(reader, len);
            }
            case 0x0B: {
                const len = ObjectCompressor._readUint32Fast(reader);
                return ObjectCompressor._readStringFast(reader, len);
            }
            default:
                throw new Error(`反序列化错误：未知类型标记 0x${type.toString(16)}`);
        }
    }

    /**
     * 快速读取32位有符号整数
     */
    private static _readInt32Fast(reader: { data: Uint8Array; pos: number }): number {
        if (reader.pos + 4 > reader.data.length) {
            throw new Error('反序列化错误：数据不足，无法读取Int32');
        }
        const result = reader.data[reader.pos] |
            (reader.data[reader.pos + 1] << 8) |
            (reader.data[reader.pos + 2] << 16) |
            (reader.data[reader.pos + 3] << 24);
        reader.pos += 4;
        return result;
    }

    /**
     * 快速读取32位无符号整数
     */
    private static _readUint32Fast(reader: { data: Uint8Array; pos: number }): number {
        if (reader.pos + 4 > reader.data.length) {
            throw new Error('反序列化错误：数据不足，无法读取Uint32');
        }
        const result = reader.data[reader.pos] |
            (reader.data[reader.pos + 1] << 8) |
            (reader.data[reader.pos + 2] << 16) |
            (reader.data[reader.pos + 3] << 24);
        reader.pos += 4;
        return result >>> 0;
    }

    /**
     * 快速读取64位浮点数
     */
    private static _readFloat64Fast(reader: { data: Uint8Array; pos: number }): number {
        if (reader.pos + 8 > reader.data.length) {
            throw new Error('反序列化错误：数据不足，无法读取Float64');
        }

        // 直接使用DataView，避免创建临时缓冲区
        const view = new DataView(reader.data.buffer, reader.data.byteOffset + reader.pos, 8);
        const result = view.getFloat64(0, true); // 小端序
        reader.pos += 8;
        return result;
    }

    /**
     * 快速读取字符串
     */
    private static _readStringFast(reader: { data: Uint8Array; pos: number }, length: number): string {
        if (reader.pos + length > reader.data.length) {
            throw new Error(`反序列化错误：数据不足，无法读取长度为${length}的字符串`);
        }

        // 直接使用subarray避免复制
        const bytes = reader.data.subarray(reader.pos, reader.pos + length);
        reader.pos += length;
        return ObjectCompressor._utf8DecodeFast(bytes);
    }

    /**
     * 快速读取Uint8Array
     */
    private static _readUint8ArrayFast(reader: { data: Uint8Array; pos: number }, length: number): Uint8Array {
        if (reader.pos + length > reader.data.length) {
            throw new Error(`反序列化错误：数据不足，无法读取长度为${length}的Uint8Array`);
        }

        // 直接使用slice创建新的Uint8Array
        const result = reader.data.slice(reader.pos, reader.pos + length);
        reader.pos += length;
        return result;
    }

    /**
     * 快速读取数组
     */
    private static _readArrayFast(reader: { data: Uint8Array; pos: number }, length: number) {
        const result = new Array(length);
        for (let i = 0; i < length; i++) {
            result[i] = ObjectCompressor._deserializeValue(reader);
        }
        return result;
    }

    /**
     * 快速读取对象
     */
    private static _readObjectFast(reader: { data: Uint8Array; pos: number }, length: number) {
        const result:any = {};
        for (let i = 0; i < length; i++) {
            // 读取键
            let keyLen = reader.data[reader.pos++];
            if (keyLen === 0xFF) {
                keyLen = ObjectCompressor._readUint32Fast(reader);
            }
            const key = ObjectCompressor._readStringFast(reader, keyLen);
            // 读取值
            result[key] = ObjectCompressor._deserializeValue(reader);
        }
        return result;
    }

    /**
     * 快速UTF-8解码
     */
    private static _utf8DecodeFast(bytes: Uint8Array): string {
        // 对于小字符串，使用优化的解码
        if (bytes.length < 1024) {
            return ObjectCompressor._utf8DecodeSmall(bytes);
        }

        // 对于大字符串，使用分块解码
        return ObjectCompressor._utf8DecodeLarge(bytes);
    }

    /**
     * 小字符串快速解码
     */
    private static _utf8DecodeSmall(bytes: Uint8Array): string {
        let out = '';
        let i = 0;
        const len = bytes.length;

        while (i < len) {
            const b1 = bytes[i++];
            if ((b1 & 0x80) === 0) {
                out += String.fromCharCode(b1);
            } else if ((b1 & 0xE0) === 0xC0) {
                const b2 = bytes[i++];
                out += String.fromCharCode(((b1 & 0x1F) << 6) | (b2 & 0x3F));
            } else if ((b1 & 0xF0) === 0xE0) {
                const b2 = bytes[i++];
                const b3 = bytes[i++];
                out += String.fromCharCode(((b1 & 0x0F) << 12) | ((b2 & 0x3F) << 6) | (b3 & 0x3F));
            } else {
                // 4字节UTF-8
                const b2 = bytes[i++];
                const b3 = bytes[i++];
                const b4 = bytes[i++];
                let cp = ((b1 & 0x07) << 18) | ((b2 & 0x3F) << 12) | ((b3 & 0x3F) << 6) | (b4 & 0x3F);
                cp -= 0x10000;
                out += String.fromCharCode(0xD800 + (cp >> 10));
                out += String.fromCharCode(0xDC00 + (cp & 0x3FF));
            }
        }
        return out;
    }

    /**
     * 大字符串分块解码
     */
    private static _utf8DecodeLarge(bytes: Uint8Array): string {
        const chunks: string[] = [];
        const chunkSize = 8192; // 8KB chunks

        for (let i = 0; i < bytes.length; i += chunkSize) {
            const chunk = bytes.subarray(i, Math.min(i + chunkSize, bytes.length));
            chunks.push(ObjectCompressor._utf8DecodeSmall(chunk));
        }

        return chunks.join('');
    }

    /**
     * 压缩字符串
     * @param str 要压缩的字符串
     * @returns 压缩后的数据
     */
    public static compressString(str: string): Uint8Array {
        if (DEBUG) {
            if (typeof str !== 'string') {
                throw new Error('参数必须是字符串类型');
            }
            const uint8Data = ObjectCompressor._utf8Encode(str);
            return ObjectCompressor.compress(uint8Data);
        }
    }

    /**
     * 解压字符串
     * @param compressedData 压缩数据
     * @returns 解压后的字符串
     */
    public static decompressString(compressedData: Uint8Array): string {
        const decompressedData = ObjectCompressor.decompress(compressedData);
        if (typeof decompressedData === 'string') {
            return decompressedData;
        } else if (decompressedData instanceof Uint8Array) {
            return ObjectCompressor._utf8Decode(decompressedData);
        } else {
            throw new Error('解压数据不是字符串或Uint8Array类型');
        }
    }

    /**
     * 压缩数据
     * @param data 要压缩的数据
     * @returns 压缩后的数据
     */
    public static compress(data: Uint8Array | string): Uint8Array {
        if (DEBUG) {
            try {
                // 转换数据为Uint8Array
                let uint8Data: Uint8Array;
                let isObject = false;

                if (data instanceof Uint8Array) {
                    uint8Data = data;
                } else if (typeof data === 'string') {
                    uint8Data = ObjectCompressor._utf8Encode(data);
                } else if (typeof data === 'object') {
                    uint8Data = ObjectCompressor._objectToUint8Array(data);
                    isObject = true;
                } else {
                    throw new Error('不支持的数据类型，只支持Object、Uint8Array或string');
                }

                // 计算原始数据校验信息
                const originalCRC32 = ObjectCompressor._calculateCRC32(uint8Data);
                const originalSize = uint8Data.length;

                // LZ77压缩
                const compressedData = ObjectCompressor._compressLZ77(uint8Data);
                const compressedSize = compressedData.length;

                // 构建文件头
                const header = new Uint8Array(24); // 文件头大小：魔数(4) + 版本(2) + 类型(1) + 保留(1) + 原始大小(4) + 压缩大小(4) + 原始CRC32(4) + 压缩CRC32(4)

                // 手动写入数据到header
                header[0] = (ObjectCompressor.MAGIC_HEADER >> 24) & 0xFF;
                header[1] = (ObjectCompressor.MAGIC_HEADER >> 16) & 0xFF;
                header[2] = (ObjectCompressor.MAGIC_HEADER >> 8) & 0xFF;
                header[3] = ObjectCompressor.MAGIC_HEADER & 0xFF;

                header[4] = (ObjectCompressor.VERSION >> 8) & 0xFF;
                header[5] = ObjectCompressor.VERSION & 0xFF;

                header[6] = isObject ? 1 : 0;
                header[7] = 0;

                header[8] = (originalSize >> 24) & 0xFF;
                header[9] = (originalSize >> 16) & 0xFF;
                header[10] = (originalSize >> 8) & 0xFF;
                header[11] = originalSize & 0xFF;

                header[12] = (compressedSize >> 24) & 0xFF;
                header[13] = (compressedSize >> 16) & 0xFF;
                header[14] = (compressedSize >> 8) & 0xFF;
                header[15] = compressedSize & 0xFF;

                // 存储CRC32为无符号32位整数（大端序）
                header[16] = (originalCRC32 >>> 24) & 0xFF;
                header[17] = (originalCRC32 >>> 16) & 0xFF;
                header[18] = (originalCRC32 >>> 8) & 0xFF;
                header[19] = originalCRC32 & 0xFF;


                const compressedCRC32 = ObjectCompressor._calculateCRC32(compressedData);
                header[20] = (compressedCRC32 >>> 24) & 0xFF;
                header[21] = (compressedCRC32 >>> 16) & 0xFF;
                header[22] = (compressedCRC32 >>> 8) & 0xFF;
                header[23] = compressedCRC32 & 0xFF;

                // 合并数据
                const result = new Uint8Array(24 + compressedSize);
                result.set(header, 0);
                result.set(compressedData, 24);

                return result;
            } catch (error:any) {
                throw new Error(`压缩失败: ${error.message}`);
            }
        }
    }

    /**
     * 解压数据
     * @param data 压缩数据
     * @returns 解压后的数据
     */
    public static decompress(data: Uint8Array | ArrayBuffer): Uint8Array | string {
        let compressedData: Uint8Array;
        if (data instanceof ArrayBuffer) {
            compressedData = new Uint8Array(data);
        } else {
            compressedData = data;
        }
        if (compressedData.length < 24) {
            throw new Error('压缩数据格式错误：文件头不完整');
        }

        // 解析文件头
        const magic = (compressedData[0] << 24) | (compressedData[1] << 16) | (compressedData[2] << 8) | compressedData[3];
        const version = (compressedData[4] << 8) | compressedData[5];
        const isObject = compressedData[6] === 1;
        const originalSize = (compressedData[8] << 24) | (compressedData[9] << 16) | (compressedData[10] << 8) | compressedData[11];
        const compressedSize = (compressedData[12] << 24) | (compressedData[13] << 16) | (compressedData[14] << 8) | compressedData[15];
        // 读取CRC32为无符号32位整数（大端序）
        const originalCRC32 = ((compressedData[16] << 24) | (compressedData[17] << 16) | (compressedData[18] << 8) | compressedData[19]) >>> 0;
        const compressedCRC32 = ((compressedData[20] << 24) | (compressedData[21] << 16) | (compressedData[22] << 8) | compressedData[23]) >>> 0;

        // 验证魔数和版本
        if (magic !== ObjectCompressor.MAGIC_HEADER) {
            throw new Error('压缩数据格式错误：魔数不匹配');
        }
        if (version !== ObjectCompressor.VERSION) {
            throw new Error('压缩数据格式错误：版本不兼容');
        }

        // 提取压缩数据
        const compressedDataOnly = compressedData.slice(24, 24 + compressedSize);

        // 验证压缩数据完整性
        const actualCompressedCRC32 = ObjectCompressor._calculateCRC32(compressedDataOnly);
        if (actualCompressedCRC32 !== compressedCRC32) {
            throw new Error('压缩数据损坏：CRC32校验失败');
        }

        // LZ77解压
        const decompressedData = ObjectCompressor._decompressLZ77(compressedDataOnly);

        // 验证解压后数据大小
        if (decompressedData.length !== originalSize) {
            throw new Error(`解压数据损坏：大小不匹配 (期望: ${originalSize}, 实际: ${decompressedData.length})`);
        }

        // 验证解压后数据完整性
        const actualOriginalCRC32 = ObjectCompressor._calculateCRC32(decompressedData);

        if (actualOriginalCRC32 !== originalCRC32) {
            throw new Error('解压数据损坏：CRC32校验失败');
        }

        // 根据原始数据类型返回
        if (isObject) {
            return ObjectCompressor._uint8ArrayToObject(decompressedData);
        } else {
            // 尝试判断是否为字符串（通过检查是否为有效的UTF-8）
            return ObjectCompressor._utf8Decode(decompressedData);
        }
    }

    /**
     * UTF-8 编码：将字符串转为 Uint8Array（优化版本）
     */
    private static _utf8Encode(str: string): Uint8Array {
        if (DEBUG) {
            // 预估字节长度，减少内存重分配
            let estimatedLength = str.length * 3; // 保守估计
            let bytes = new Uint8Array(estimatedLength);
            let bytePos = 0;

            for (let i = 0; i < str.length; i++) {
                let code = str.charCodeAt(i);

                // 处理代理对
                if (code >= 0xD800 && code <= 0xDBFF && i + 1 < str.length) {
                    const next = str.charCodeAt(i + 1);
                    if (next >= 0xDC00 && next <= 0xDFFF) {
                        code = 0x10000 + ((code - 0xD800) << 10) + (next - 0xDC00);
                        i++; // 跳过低位代理
                    }
                }

                // 检查是否需要扩容
                if (bytePos + 4 > bytes.length) {
                    const newBytes = new Uint8Array(bytes.length * 2);
                    newBytes.set(bytes.subarray(0, bytePos));
                    bytes = newBytes;
                }

                if (code <= 0x7F) {
                    bytes[bytePos++] = code;
                } else if (code <= 0x7FF) {
                    bytes[bytePos++] = 0xC0 | (code >> 6);
                    bytes[bytePos++] = 0x80 | (code & 0x3F);
                } else if (code <= 0xFFFF) {
                    bytes[bytePos++] = 0xE0 | (code >> 12);
                    bytes[bytePos++] = 0x80 | ((code >> 6) & 0x3F);
                    bytes[bytePos++] = 0x80 | (code & 0x3F);
                } else {
                    bytes[bytePos++] = 0xF0 | (code >> 18);
                    bytes[bytePos++] = 0x80 | ((code >> 12) & 0x3F);
                    bytes[bytePos++] = 0x80 | ((code >> 6) & 0x3F);
                    bytes[bytePos++] = 0x80 | (code & 0x3F);
                }
            }
            return bytes.subarray(0, bytePos);
        }
    }

    /**
     * UTF-8 解码：将 Uint8Array 转为字符串（不依赖 Buffer/TextDecoder）
     */
    private static _utf8Decode(bytes: Uint8Array): string {
        let out = '';
        let i = 0;
        while (i < bytes.length) {
            const b1 = bytes[i++];
            if ((b1 & 0x80) === 0) {
                out += String.fromCharCode(b1);
                continue;
            }
            if ((b1 & 0xE0) === 0xC0) {
                const b2 = bytes[i++];
                const cp = ((b1 & 0x1F) << 6) | (b2 & 0x3F);
                out += String.fromCharCode(cp);
                continue;
            }
            if ((b1 & 0xF0) === 0xE0) {
                const b2 = bytes[i++];
                const b3 = bytes[i++];
                const cp = ((b1 & 0x0F) << 12) | ((b2 & 0x3F) << 6) | (b3 & 0x3F);
                out += String.fromCharCode(cp);
                continue;
            }
            // 4字节
            const b2 = bytes[i++];
            const b3 = bytes[i++];
            const b4 = bytes[i++];
            let cp = ((b1 & 0x07) << 18) | ((b2 & 0x3F) << 12) | ((b3 & 0x3F) << 6) | (b4 & 0x3F);
            cp -= 0x10000;
            out += String.fromCharCode(0xD800 + (cp >> 10));
            out += String.fromCharCode(0xDC00 + (cp & 0x3FF));
        }
        return out;
    }
}