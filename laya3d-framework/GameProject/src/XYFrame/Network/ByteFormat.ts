import ObjectUtils from "../Utils/ObjectUtils";
import BaseBytes from "./BaseBytes";

/**
* @Author: XXL
* @Date: 2022-08-17 10:21
* @Description: 数据格式化
*/
export default class ByteFormat {
    //空值
    public static readonly NULL = 0;
    //基础数据类型
    public static readonly INT8 = 1;
    public static readonly INT32 = 2;
    public static readonly INT64 = 3;
    public static readonly INT16 = 4;
    public static readonly DOUBLE = 5;
    public static readonly NUMBER = 10;
    public static readonly FLOAT32 = 11;

    public static readonly BOOLEAN = 6;

    public static readonly UTF8 = 20;
    //组合类型
    public static readonly ARRAY = 30;
    public static readonly INT_ARRAY = 31;
    public static readonly STR_OBJECT_MAP = 40;
    public static readonly BYTE_OBJECT_MAP = 41;
    public static readonly INT_OBJECT_MAP = 42;
    public static readonly LEN_INT_MAP = 46;


    public static readonly BYTE_ARRAY = 50;

    private static byte = new BaseBytes();

    /**
     * 加密写入二进制
     * @param object 
     * @param bytes 
     * @returns 
     */
    public static encode(object: any, bytes?: BaseBytes): BaseBytes {
        if (!bytes) { bytes = new BaseBytes(); }
        this.write(object, bytes);
        return bytes;
    }

    /**
     * 写入二进制
     * @param object 
     * @param bytes 
     */
    public static write(object: any, bytes: BaseBytes): void {
        let util = ObjectUtils;
        let typeV = util.getObjType(object);
        if (object == null || object == undefined) {//write null
            bytes.writeByte(ByteFormat.NULL);
        } else if (typeV == util.NUMBER) {//write int
            ByteFormat.writeInt(object, bytes);
        } else if (typeV == util.STRING) {//write utf8
            bytes.writeByte(ByteFormat.UTF8);
            bytes.writeUTF(object);
        } else if (typeV == util.BOOLEAN) {//write boolean
            ByteFormat.writeBoolean(object, bytes);
        } else if (typeV == util.ARRAY) {//write array
            ByteFormat.writeArray(object, bytes);
        } else if (typeV == "") {//wirte BaseBytes
            ByteFormat.writeBytes(object, bytes);
        } else if (typeV == util.OBJECT) {//write hash map
            ByteFormat.writeMap(object, bytes);
        }
    }

    /**
     * 写入一个布尔值
     * @param value 
     * @param bytes 
     */
    public static writeBoolean(value: boolean, bytes: BaseBytes): void {
        bytes.writeByte(ByteFormat.BOOLEAN);
        bytes.writeBoolean(value);
    }

    /**
     * 写入int
     * @param value 
     * @param bytes 
     */
    public static writeInt(value: number, bytes: BaseBytes): void {
        if (value > Number.MAX_VALUE) {
            bytes.writeByte(ByteFormat.INT64);
            this.writeLong(value, bytes);
        } else if (value > 32767 || value < -32768) {
            bytes.writeByte(ByteFormat.INT32);
            bytes.writeInt(value);
        } else if (value > 127 || value < -128) {
            bytes.writeByte(ByteFormat.INT16);
            bytes.writeShort(value);
        } else {
            bytes.writeByte(ByteFormat.INT8);
            bytes.writeByte(value);
        }
    }

    /**
     * 写入Long
     * @param value 
     * @param bytes 
     */
    public static writeLong(value: number, bytes: BaseBytes): void {
        bytes.writeInt(value << 32);
        bytes.writeUint(value & 32);
    }

    //写 数组
    public static writeArray(array: Array<any>, bytes: BaseBytes): void {
        bytes.writeByte(ByteFormat.ARRAY);
        let len: number = array.length;
        bytes.writeShort(len);
        for (let i: number = 0; i < len; i++) {
            let item: Object = array[i];
            this.write(item, bytes);
        }
    }

    //写 BYTE 数组
    public static writeBytes(source: BaseBytes, bytes: BaseBytes): void {
        let contentBytes: BaseBytes = ByteFormat.byte;
        contentBytes.clear();
        source.readBytes(contentBytes, 0);
        contentBytes.pos = 0;

        bytes.writeByte(ByteFormat.BYTE_ARRAY);
        bytes.writeInt(contentBytes.length);
        bytes.writeBytes(contentBytes);
    }

    //写表
    public static writeMap(map: Record<string, any>, bytes: BaseBytes): void {
        bytes.writeByte(ByteFormat.STR_OBJECT_MAP);
        let length: number = this.calculateMapLength(map);
        bytes.writeShort(length);
        for (let key in map) {
            bytes.writeUTF(key);
            this.write(map[key], bytes);
        }
    }

    //read
    public static decode(bytes: BaseBytes): Object {
        return this.read(bytes);
    }

    public static read(bytes: BaseBytes): Object {
        let ret: Object = null;
        let type: number = bytes.readByte();
        if (type == ByteFormat.INT32) {
            ret = bytes.readInt();
        } else if (type == ByteFormat.INT64 || type == ByteFormat.FLOAT32 || type == ByteFormat.DOUBLE) {
            ret = bytes.readUTF();
            ret = Number(ret);
        } else if (type == ByteFormat.INT16) {
            ret = bytes.readShort();
        } else if (type == ByteFormat.INT8) {
            ret = bytes.readByte();
        } else if (type == ByteFormat.UTF8) {
            ret = bytes.readUTF();
        } else if (type == ByteFormat.BOOLEAN) {
            ret = bytes.readBoolean();
        } else if (type == ByteFormat.ARRAY) {
            ret = this.readArray(bytes);
        } else if (type == ByteFormat.INT_ARRAY) {
            ret = this.readIntArray(bytes);
        } else if (type == ByteFormat.STR_OBJECT_MAP) {
            ret = this.readStr_ObjMap(bytes);
        } else if (type == ByteFormat.INT_OBJECT_MAP) {
            ret = this.readInt_ObjMap(bytes);
        } else if (type == ByteFormat.LEN_INT_MAP) {
            ret = this.read_LenInt_Map(bytes);
        } else if (type == ByteFormat.BYTE_ARRAY) {
            ret = this.readBaseBytes(bytes);
        } else if (type == ByteFormat.NULL) {
            ret = null;
        } else if (type == ByteFormat.BYTE_OBJECT_MAP) {
            ret = this.readByte_ObjMap(bytes);
        } else {
            throw new Error("ByteFormat error type:" + type);
        }
        return ret;
    }

    public static readLong(bytes: BaseBytes): number {
        let high: number = bytes.readInt();
        let low: number = bytes.readUint32();
        let ret: number = high << 32 + low;
        return ret;
    }

    public static readStr_ObjMap(bytes: BaseBytes): any {
        let ret: any = {};
        let length: number = bytes.readShort();
        let key, content;
        for (let i: number = 0; i < length; i++) {
            key = bytes.readUTF();
            content = this.read(bytes);
            ret[key] = content;
        }
        return ret;
    }

    public static read_LenInt_Map(bytes: BaseBytes): any {
        let ret: any = {};
        let length: number = bytes.readInt();
        let key, content;
        for (let i: number = 0; i < length; i++) {
            key = bytes.readUTF();
            content = this.read(bytes);
            ret[key] = content;
        }
        return ret;
    }

    public static readInt_ObjMap(bytes: BaseBytes): any {
        let ret: any = {};
        let length: number = bytes.readShort();
        let key, content;
        for (let i: number = 0; i < length; i++) {
            key = bytes.readInt();
            content = this.read(bytes);
            ret[key] = content;
        }
        return ret;
    }

    public static readByte_ObjMap(bytes: BaseBytes): any {
        let ret: any = {};
        let length: number = bytes.readShort();
        let key, content;
        for (let i: number = 0; i < length; i++) {
            key = bytes.readByte();
            content = this.read(bytes);
            ret[key] = content;
        }
        return ret;
    }

    public static readBaseBytes(bytes: BaseBytes): BaseBytes {
        let ret: BaseBytes = new BaseBytes();
        let len: number = bytes.readInt();
        bytes.readBytes(ret, 0, len);
        return ret;
    }

    public static readArray(bytes: BaseBytes): Array<any> {
        let ret = [];
        let len: number = bytes.readShort(), content;
        for (let i: number = 0; i < len; i++) {
            content = this.read(bytes);
            ret.push(content);
        }
        return ret;
    }

    public static readIntArray(bytes: BaseBytes): Array<any> {
        let ret = [];
        let len: number = bytes.readInt(), content;
        for (let i: number = 0; i < len; i++) {
            content = this.read(bytes);
            ret.push(content);
        }
        return ret;
    }

    private static calculateMapLength(map: Object): number {
        let ret: number = 0;
        for (let k in map) {
            ret++;
        }
        return ret;
    }
}