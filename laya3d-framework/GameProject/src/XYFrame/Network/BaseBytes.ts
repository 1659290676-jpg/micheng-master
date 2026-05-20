import Logger from "../Logger/Logger";
import StringUtils from "../Utils/StringUtils";

/**
* @Author: XXL
* @Date: 2022-07-12 20:01
* @Description: 类提供用于优化读取、写入以及处理二进制数据的方法和属性
*/
export default class BaseBytes extends Laya.Byte {

    private static temp = new Laya.Byte();

    /**是否使用Zigzag压缩*/
    private _is_zigzag: boolean = false;
    public constructor(data?: ArrayBuffer, is_zigzag: boolean = false) {
        super(data);
        this.endian = Laya.Byte.BIG_ENDIAN;
        this._is_zigzag = is_zigzag;
    }

    public clear() {
        super.clear();
        return this;
    }

    /**
     * 从字节流中读取布尔值。读取单个字节，如果字节非零，则返回 true，否则返回 false
     * @returns 
     */
    public readBoolean() {
        if (this._pos_ + 1 > this._length) {
            throw "readBoolean error - Out of bounds";
        }
        return !!this._u8d_[this._pos_++];
    }

    /**
     * 从字节流的当前字节偏移量位置处读取一个 Int16 值。
     */
    public readShort() {
        return this.readInt16();
    }

    /**
     * 从字节流的当前字节偏移量位置处读取一个 Int32 值
     */
    public readInt() {
        if (this._is_zigzag) {
            return this.readVarInt();
        }
        return this.readInt32();
    }

    /**
     * 从字节流中读取一个无符号的 32 位整数
     */
    public readUint() {
        return this.readUint32();
    }

    /**
     * 从字节流的当前字节偏移量位置处读取一个 IEEE 754 双精度（64 位）浮点数。
     * @returns 
     */
    public readLong() {
        if (this._is_zigzag) {
            return +this.readUTF();
            // return this.readVarLong();
        }
        return this.readFloat64();
    }

    /**
     * 读取 UTF-8 字符串。
     * @returns 
     */
    public readUTF() {
        if (this._is_zigzag) {
            let length = this.readInt();
            if (length <= 0) return "";
            let bytes = BaseBytes.temp;
            bytes.clear();
            bytes.length = length;
            bytes.pos = 0;
            this.readBytes(bytes, 0, length);
            return StringUtils.bytesToStr(bytes["_u8d_"]);
        } else {
            return this.readUTFString();
        }
    }

    /**
     * 从套接字读取 length 参数指定的数据字节数。从 offset 所表示的位置开始，将这些字节读入指定的字节数组
     * @param bytes 要将数据读入的 Laya.Byte 对象
     * @param offset 数据读取的偏移量应从该字节数组中开始
     * @param len 要读取的字节数。默认值 0 导致读取所有可用的数据
     */
    public readBytes(bytes: Laya.Byte, offset: number = 0, len: number = 0) {
        if (!bytes) {
            return;
        }
        var pos = this._pos_;
        var available = this._length - pos;
        if (available < 0) {
            Logger.error("遇到文件尾");
            return;
        }
        if (len == 0) {
            len = available;
        }
        else if (len > available) {
            Logger.error("遇到文件尾");
            return;
        }
        var position = bytes.pos;
        bytes["_ensureWrite"](position + len);
        bytes["_u8d_"].set(this._u8d_.subarray(pos + offset, pos + offset + len), position);
        // this.pos = len + pos;
        this._pos_ += len;
    }

    /**
     * 写入布尔值。根据 value 参数写入单个字节。如果为 true，则写入 1，如果为 false，则写入 0
     * @param val 
     */
    public writeBoolean(val: boolean) {
        this["_ensureWrite"](this._pos_ + 1);
        this._u8d_[this._pos_++] = +val;
    }

    /**
     * 在字节流的当前字节偏移量位置处写入指定的 Int16 值。
     * @param val 
     */
    public writeShort(val: number) {
        this.writeInt16(val);
    }
    /**
     * 在字节流的当前字节偏移量位置处写入指定的 Int32 值。
     * @param val 
     */
    public writeInt(val: number) {
        if (this._is_zigzag) {
            val = Math.trunc(val);
            this.writeVarInt(this.encodeZigzag(val));
            return;
        }
        this.writeInt32(val);
    }

    /**
     * 在字节流中写入一个无符号的 32 位整数
     * @param val 
     */
    public writeUint(val: number) {
        this.writeUint32(val);
    }

    /**
     * 在字节流的当前字节偏移量位置处写入一个 IEEE 754 双精度（64 位）浮点数。
     * @param val 双精度（64 位）浮点数
     */
    public writeLong(val: number) {
        if (this._is_zigzag) {
            val = Math.trunc(val);
            // this.writeVarLong(val);
            this.writeUTF(val.toString());
            return;
        }
        val = parseInt(val + "", 10);
        this.writeFloat64(val);
    }

    /**
     * 将 UTF-8 字符串写入字节流。先写入以字节表示的 UTF-8 字符串长度（作为 16 位整数），然后写入表示字符串字符的字节。
     * @param val 
     */
    public writeUTF(val: string) {
        if (this._is_zigzag) {
            let b = StringUtils.strToBytes(val);
            this.writeInt(b.length);
            let bytes = BaseBytes.temp;
            bytes.clear();
            bytes.length = b.length;
            bytes.pos = 0;
            bytes["_u8d_"].set(b);
            this.writeBytes(bytes);
        } else {
            this.writeUTFString(val);
        }
    }

    /**
    * 将指定字节数组 bytes（起始偏移量为 offset，从零开始的索引）中包含 length 个字节的字节序列写入字节流
    * 如果省略 length 参数，则使用默认长度 0；该方法将从 offset 开始写入整个缓冲区。如果还省略了 offset 参数，则写入整个缓冲区
    * 如果 offset 或 length 超出范围，它们将被锁定到 bytes 数组的开头和结尾
    * @param bytes ByteArray 对象
    * @param offset 从 0 开始的索引，表示在数组中开始写入的位置
    * @param length 一个无符号整数，表示在缓冲区中的写入范围
    */
    public writeBytes(bytes: Laya.Byte, offset = 0, length = 0) {
        if (offset < 0) {
            return;
        }
        let writeLength: number;
        if (length < 0) {
            return;
        } else if (length == 0) {
            writeLength = bytes.length - offset;
        } else {
            writeLength = Math.min(bytes.length - offset, length);
        }
        if (writeLength > 0) {
            let position = this._pos_;
            this["_ensureWrite"](position + writeLength);
            this._u8d_.set(bytes["_u8d_"].subarray(offset, offset + writeLength), position);
            this._pos_ += writeLength;
        }
    }

    /**
     * 根据数组类型解析
     * @param format 数据对应的类型
     * @param ret 返回的数据
     * @returns 返回数据
     */
    public readFmt(format: any[], ret?: any[]) {
        if (!ret) {
            ret = [];
        }
        let _t = this;
        for (let i = 0, len = format.length; i < len; i++) {
            let v = format[i];
            if (v == "B") {
                ret[i] = _t.readByte();
            } else if (v == "I") {
                ret[i] = _t.readInt();
            } else if (v == "L") {
                ret[i] = _t.readLong();
            } else if (v == "S") {
                ret[i] = _t.readShort();
            } else if (v == "U") {
                ret[i] = _t.readUTF();
            } else if (v == "J") {
                ret[i] = JSON.parse(_t.readUTF());
            } else {
                let len1 = _t.readShort();
                let arr: any[] = ret[i] = [];
                for (let j = 0; j < len1; j++) {
                    arr[j] = _t.readFmt(v);
                }
            }
        }
        return ret;
    }

    /**
     * zigzag编码 - 将有符号整数转换为无符号整数
     * @param n 有符号整数
     * @returns 无符号整数
     */
    private encodeZigzag(n: number): number {
        return (n << 1) ^ (n >> 31);
    }

    private getSignedDisp(value: number, len: number): number {
        let unsignedValue = value >>> 0;
        return unsignedValue >>> len;
    }


    /**
     * 模拟 C# 中的 (sbyte)(value | 0x80) 操作
     * @param value - int 类型的值
     * @returns 8 位有符号整数 (-128 到 127)
     */
    private sbyteOr80(value: number) {

        // 执行按位或操作，设置最高位为 1
        const result = value | 0x80;

        // 截断为 8 位（取最低 8 位）
        const byteResult = result & 0xFF;

        // 转换为有符号整数（如果最高位为 1，则为负数）
        let val = byteResult > 127 ? byteResult - 256 : byteResult;
        return val;
    }

    /**
     * 模拟 C# 中的 (byte)(value | 0x80) 操作
     * @param value - int 类型的值
     * @returns 8 位无符号整数 (0 到 255)
     */
    private byteOr80(value: number): number {
        value = value | 0x80;
        return value & 0xFF;
    }

    private longToInt(value: number): number {
        return value & 0xFFFFFFFF;
    }

    /**
     * 写入可变长度的整数
     * @param value 要写入的整数
     */
    private writeVarInt(value: number): void {
        let _t = this;
        let a = _t.getSignedDisp(value, 7);
        if (a == 0) {
            _t.writeByte(value);
            return;
        }
        _t.writeByte(_t.sbyteOr80(value));
        let b = _t.getSignedDisp(value, 14);
        if (b == 0) {
            _t.writeByte(a);
            return;
        }
        _t.writeByte(_t.sbyteOr80(a));
        a = _t.getSignedDisp(value, 21);
        if (a == 0) {
            _t.writeByte(b);
            return;
        }
        _t.writeByte(_t.sbyteOr80(b));
        b = _t.getSignedDisp(value, 28);
        if (b == 0) {
            _t.writeByte(a);
            return;
        }
        _t.writeByte(_t.sbyteOr80(a));
        _t.writeByte(b);
    }

    /**
     * 读取可变长度的整数
     * @returns 读取的整数
     */
    private readVarInt(): number {
        let b = this.readByte();
        let value = b;
        if (b < 0) {
            b = this.readByte();
            value = value & 0x0000007F | (b << 7);
            if (b < 0) {
                b = this.readByte();
                value = value & 0x00003FFF | (b << 14);
                if (b < 0) {
                    b = this.readByte();
                    value = value & 0x001FFFFF | (b << 21);
                    if (b < 0) {
                        b = this.readByte();
                        value = value & 0x0FFFFFFF | (b << 28);
                    }
                }
            }
        }
        return this.getSignedDisp(value, 1) ^ -(value & 1);
    }

    // private _writeBytes(buffer: Uint8Array, offset: number = 0, length: number = 0): void {
    //     // let bytes = BaseBytes.temp;
    //     // bytes.length = buffer.byteLength;
    //     // bytes.pos = 0;
    //     // bytes["_u8d_"].set(buffer);
    //     if (offset < 0 || length < 0) {
    //         console.error("_writeBytes error - Out of bounds");
    //         return;
    //     }
    //     if(length == 0) {
    //         length = buffer.length - offset;
    //     }
    //     this["_ensureWrite"](this._pos_ + length);
    //     this._u8d_.set(buffer.subarray(offset, offset + length), this._pos_);
    //     this._pos_ += length;
    // }

    // private writeVarLong(value: number): void {
    //     let long = Long.fromNumber(value);
    //     let mask = long.shiftLeft(1).xor(long.shiftRight(63));
    //     let unsignedMask = mask.toUnsigned();

    //     let a = unsignedMask.shiftRight(32).toNumber() & 0xFFFFFFFF;
    //     if (a === 0) {
    //         this.writeVarInt(mask.toNumber());
    //         return;
    //     }

    //     let bytes = new Uint8Array(9);
    //     bytes[0] = (mask.toNumber() | 0x80) & 0xFF;
    //     bytes[1] = (unsignedMask.shiftRight(7).toNumber() | 0x80) & 0xFF;
    //     bytes[2] = (unsignedMask.shiftRight(14).toNumber() | 0x80) & 0xFF;
    //     bytes[3] = (unsignedMask.shiftRight(21).toNumber() | 0x80) & 0xFF;

    //     a = unsignedMask.shiftRight(28).toNumber() & 0xFFFFFFFF;
    //     let b = unsignedMask.shiftRight(35).toNumber() & 0xFFFFFFFF;
    //     if (b === 0) {
    //         bytes[4] = a & 0xFF;
    //         this._writeBytes(bytes, 0, 5);
    //         return;
    //     }

    //     bytes[4] = (a | 0x80);
    //     a = unsignedMask.shiftRight(42).toNumber() & 0xFFFFFFFF;
    //     if (a === 0) {
    //         bytes[5] = b & 0xFF;
    //         this._writeBytes(bytes, 0, 6);
    //         return;
    //     }

    //     bytes[5] = (b | 0x80) & 0xFF;
    //     b = unsignedMask.shiftRight(49).toNumber() & 0xFFFFFFFF;
    //     if (b === 0) {
    //         bytes[6] = a & 0xFF;
    //         this._writeBytes(bytes, 0, 7);
    //         return;
    //     }

    //     bytes[6] = (a | 0x80) & 0xFF;
    //     a = unsignedMask.shiftRight(56).toNumber() & 0xFFFFFFFF;
    //     if (a === 0) {
    //         bytes[7] = b & 0xFF;
    //         this._writeBytes(bytes, 0, 8);
    //         return;
    //     }

    //     bytes[7] = (b | 0x80) & 0xFF;
    //     bytes[8] = a & 0xFF;
    //     this._writeBytes(bytes);
    // }


    // private readVarLong(): number {
    //     let _t = this;
    //     let b = _t.readByte();
    //     let value = Long.fromNumber(b);
    //     if (b < 0) {
    //         b = _t.readByte();
    //         value = value.and(Long.fromNumber(0x0000007F)).or(Long.fromNumber(b).shiftLeft(7));
    //         // value = value & 0x0000007F | (b << 7);
    //         if (b < 0) {
    //             b = _t.readByte();
    //             value = value.and(Long.fromNumber(0x00003FFF)).or(Long.fromNumber(b).shiftLeft(14));
    //             // value = value & 0x00003FFF | (b << 14);
    //             if (b < 0) {
    //                 b = _t.readByte();
    //                 value = value.and(Long.fromNumber(0x001FFFFF)).or(Long.fromNumber(b).shiftLeft(21));
    //                 // value = value & 0x001FFFFF | (b << 21);
    //                 if (b < 0) {
    //                     b = _t.readByte();
    //                     value = value.and(Long.fromNumber(0x0FFFFFFF)).or(Long.fromNumber(b).shiftLeft(28));
    //                     // value = value & 0x0FFFFFFF | (b << 28);
    //                     if (b < 0) {
    //                         b = _t.readByte();
    //                         value = value.and(Long.fromNumber(0x07FFFFFFFF)).or(Long.fromNumber(b).shiftLeft(35));
    //                         // value = value & 0x07FFFFFFFF | (b << 35);
    //                         if (b < 0) {
    //                             b = _t.readByte();
    //                             value = value.and(Long.fromNumber(0x03FFFFFFFFFF)).or(Long.fromNumber(b).shiftLeft(42));
    //                             // value = value & 0x03FFFFFFFFFF | (b << 42);
    //                             if (b < 0) {
    //                                 b = _t.readByte();
    //                                 value = value.and(Long.fromNumber(0x0001FFFFFFFFFFFF)).or(Long.fromNumber(b).shiftLeft(49));
    //                                 // value = value & 0x0001FFFFFFFFFFFF | (b << 49);
    //                                 if (b < 0) {
    //                                     b = _t.readByte();
    //                                     value = value.and(Long.fromNumber(0x00FFFFFFFFFFFFFF)).or(Long.fromNumber(b).shiftLeft(56));
    //                                     // value = value & 0x01FFFFFFFFFFFF | (b << 56);
    //                                 }
    //                             }
    //                         }
    //                     }
    //                 }
    //             }
    //         }
    //     }
    //     const result = value.toUnsigned().shiftRight(1).xor(Long.fromNumber(-(value.toNumber() & 1)));
    //     return result.toNumber();
    // }

}