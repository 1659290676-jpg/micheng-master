import Config_AttributeGrowth_105 from "../ConfigData/Ts/Config_AttributeGrowth_105";
import EnumKey from "./EnumKey";

/**
 * @ Author: XXL
 * @ Date: 2026-03-20 14:58
 * @ Description: 角色数据
*/
export default class Vo_Hero implements ICacheData {
    /** 角色 id */
    public id: number;
    /** 性别 1 男 2 女 0 未知 */
    public sex: number;
    /** 名字 */
    public name: string;
    /** 创号时间戳 毫秒数 */
    public create_tm: number;
    /** 省份归属 */
    public province: number;
    /** 城市归属 */
    public city: number;
    /** ip 归属 */
    public ip: string;
    /** 服务器id */
    public srvId: number;
    /** 已通关的关卡等级 */
    public stage_lev: number;
    /**是否解锁广告卡 */
    public isAdUnlock: boolean;
    /** 是否离线卡 */
    public isOfflineCard: boolean;
    /**头像id */
    public headId: number;
    /** 总充值(分) */
    public totalRecharge: number;

    /** 已激活的皮肤 */
    public skin: Record<number | string, boolean>;
    /** 属性映射 */
    protected attrMap: Record<number | string, number>;
    /** 属性购买映射 */
    protected attrBuy: Record<number | string, number>;

    public constructor() {
        this.clear();
    }

    public setData(data: any) {
        if (!data) return;

        let _t = this;
        _t.clear();
        _t.id = data[EnumKey.Key_ID];
        _t.name = data[EnumKey.Key_Name] || "";
        _t.sex = data[EnumKey.Key_Sex];
        _t.city = data[EnumKey.Key_City] || 0;
        _t.ip = data[EnumKey.Key_IpCity];
        _t.srvId = data[EnumKey.Key_SrvId] || 0;
        _t.stage_lev = data[EnumKey.Key_Gq] || 0;
        _t.headId = data[EnumKey.Key_Head] || 1001;
        _t.isAdUnlock = !!data[EnumKey.Key_Ad];
        _t.totalRecharge = data[EnumKey.KEY_RECHARGE] || 0;
        _t.isOfflineCard = !!data[EnumKey.KEY_OFFLINE];

        let map = data[EnumKey.KEY_ATTR];
        if (map) {
            for (let k in map) {
                _t.setBuy(+k, +map[k] || 0);
            }
        }
        let skin = data[EnumKey.KEY_ACT_SKIN];
        if (skin) {
            for (let i = 0, len = skin.length; i < len; i++) {
                _t.skin[skin[i]] = true;
            }
        }

        for (let k in data) {
            let id = +k;
            if (1 <= id && id <= 100) {
                _t.setVal(id, data[k]);
            }
        }
    }

    /** 金币 */
    public get gold() {
        return this.getVal(EnumKey.Gold);
    }

    public set gold(n: number) {
        this.setVal(EnumKey.Gold, n);
    }

    /**
     * 设置属性值
     * @param type 属性类型
     * @param n 属性值
     */
    public setVal(type: number | string, n: number) {
        this.attrMap[type] = n;
    }

    /**
     * 获取属性值，未包含购买属性值
     * @param type 属性类型
     * @returns 属性值
     */
    public getVal(type: number | string) {
        return this.attrMap[type] || 0;
    }

    /**
     * 获取属性值，包含了购买属性值
     * @param type 属性类型
     */
    public getTotalAttr(type: number | string) {
        let val = this.getVal(type);
        if (type == EnumKey.Attack) {
            let buy = this.getBuy(1);
            val += Config_AttributeGrowth_105.getAtkByKey(buy) || 0;
        } else if (type == EnumKey.Speed) {
            let buy = this.getBuy(2);
            val += Config_AttributeGrowth_105.getSpeedByKey(buy) || 0;
        } else if (type == EnumKey.GrowUp) {
            let buy = this.getBuy(3);
            val += Config_AttributeGrowth_105.getGrowthByKey(buy) || 0;
        }
        return val;
    }

    /**
     * 获取属性购买值
     * @param type 属性类型
     * @returns 属性购买值
     */
    public getBuy(type: number | string) {
        return this.attrBuy[type] || 0;
    }

    public setBuy(type: number | string, n: number) {
        this.attrBuy[type] = n;
    }

    public setByStorage(data: any) {
        this.clear();
        if (data) {
            let _t = this;
            _t.id = data.id || 0;
            _t.sex = data.sex || 0;
            _t.name = data.name || "";
            _t.create_tm = data.create_tm || 0;
            _t.province = data.province || 0;
            _t.city = data.city || 0;
            _t.ip = data.ip || "";
            _t.srvId = data.srvId || 0;
            _t.totalRecharge = data.totalRecharge || 0;
            _t.stage_lev = data.stage_lev || 0;
            _t.isAdUnlock = data.isAdUnlock || false;
            _t.totalRecharge = data.totalRecharge || 0;
            _t.isOfflineCard = data.isOfflineCard || false;
            _t.headId = data.headId || 1;
            _t.attrMap = data.attrMap || {};
            _t.attrBuy = data.attrBuy || {};
            _t.skin = data.skin || {};
        }
    }

    public toStorage() {
        let _t = this;
        return {
            id: _t.id,
            sex: _t.sex,
            name: _t.name,
            create_tm: _t.create_tm,
            province: _t.province,
            city: _t.city,
            ip: _t.ip,
            srvId: _t.srvId,
            stage_lev: _t.stage_lev,
            headId: _t.headId,
            isAdUnlock: _t.isAdUnlock,
            totalRecharge: _t.totalRecharge,
            isOfflineCard: _t.isOfflineCard,
            attrMap: _t.attrMap,
            attrBuy: _t.attrBuy,
            skin: _t.skin,
        }
    }

    public clear() {
        let _t = this;
        _t.id = 0;
        _t.sex = 0;
        _t.name = "";
        _t.create_tm = 0;
        _t.province = 0;
        _t.city = 0;
        _t.ip = "";
        _t.srvId = 0;
        _t.stage_lev = 0;
        _t.isAdUnlock = false;
        _t.headId = 1001;
        _t.totalRecharge = 0;
        _t.attrMap = {};
        _t.attrBuy = {};
        _t.skin = {};
    }
}