import { XYFrame } from "../../XYFrame/XYFrame";

/**
 * @ Author: XXL
 * @ Date: 2026-03-05 20:59
 * @ Description: 物品基类
*/
export default class Vo_GoodBase implements IGood {
    /** 物品类型 */
    public type: number = 0;
    /** 表id */
    public id: number = 0;
    /** 数量 */
    public count: number = 0;

    /**
     * 名字
     * @returns 物品名称
     */
    public get Name(): string {
        return "";
    }

    /**
     * 品质
     * @returns 物品品质
     */
    public get Quality(): number {
        return 1;
    }

    /**
     * 图标
     * @returns 物品图标路径
     */
    public get Icon(): number | string {
        return null;
    }

    /**
     * 初始化数据
     * @param type 物品类型
     * @param id 表id
     */
    protected init(id: number | string) {
        this.id = +id;
    }


    public setByStorage(data: any[]) {
        if (data) {
            let _t = this;
            _t.type = data[0];
            _t.id = data[1];
            _t.count = data[2];
            _t.init(_t.id);
        }
    }

    public toStorage() {
        let _t = this;
        return [_t.type, _t.id, _t.count]
    }

    /**
     * 清理重置对象，清空脏数据
     */
    public clear() {
        let _t = this;
        _t.type = _t.id = _t.count = null;
    }

    /**
     * 回收
     */
    public recover(): void {
        this.clear();
        XYFrame.PoolMgr.releaseCls(this);
    }

    /**
     * 销毁
     */
    public destroy(): void {
        this.clear();
    }
}