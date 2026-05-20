import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_daoju_102 from "../../../DataStock/ConfigData/Ts/Config_daoju_102";
import ConfigUtils from "../../../DataStock/ConfigUtils";
import EnumKey from "../../../DataStock/GameData/EnumKey";
import Vo_Item from "../../../DataStock/GameData/Vo_Item";
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import { EnumStorageKey } from "../../EnumStorageKey";
import Game from "../../Game";
import Vw_RewardAlert from "../Common/Vw_RewardAlert";
import Vw_Msg from "../Tip/Vw_Msg";
import { EnumItemType } from "./EnumItemType";

/** 缓存数据类型 */
const enum Enum_BagCache {
    items = 1,
}

export default class Model_Bag extends BaseModel {

    /** 模拟使用道具注册 key是道具类型 */
    private _useFunMap: Record<number, (...arg: any) => void>;

    public static readonly instance: Model_Bag;
    public constructor(socket: SocketMgr) {
        super(socket);
        let _t = this;
        // 注册使用道具的函数映射表
        let map: any = _t._useFunMap = {};
        map[EnumItemType.Unlimited_Stamina] = _t._useUnlimitedStamina;
        map[EnumItemType.Max_Stamina] = _t._useMaxStamina;
        map[EnumItemType.Skin] = _t._useSkin;
    }

    // todo -------------------------- 模拟自动使用道具 start ----------------------------------
    //#region 模拟自动使用道具处理
    /**
     * 使用无限体力道具
     * @param _t 
     * @param type 
     * @param id 
     * @param num 
     */
    private _useUnlimitedStamina(_t: this, type: number, id: number, num: number) {
        let info = Config_daoju_102.getJsByKey(id);
        if (info && info.time > 0 && num > 0) {
            let time = info.time * num * 60;
            Game.Model.stamina.simulationAddFreeTime(time);
        }
    }

    /**
     * 使用上限体力道具
     * @param _t 
     * @param type 
     * @param id 
     * @param num 
     */
    private _useMaxStamina(_t: this, type: number, id: number, num: number) {
        let info = Config_daoju_102.getJsByKey(id);
        if (info && info.time > 0 && num > 0) {
            let time = info.time * num * 60;
            Game.Model.stamina.simulateAddMaxTime(time);
        }
    }

    /**
     * 使用头像皮肤道具激活头像
     * @param _t 
     * @param type 
     * @param id 
     * @param num 
     */
    private _useSkin(_t: this, type: number, id: number, num: number) {
        let info = Config_daoju_102.getJsByKey(id);
        if (info && info.id > 0 && num > 0) {
            if (ConfigData.skin_301[info.id]) {
                let bo = Game.Model.hero.vo.skin[info.id];
                if (!bo) {
                    Game.Model.hero.CG128([info.id]);
                }
            }
        }
    }

    //#endregion 
    // todo -------------------------- 模拟自动使用道具 end ----------------------------------



    public getStorageKey(): string {
        return EnumStorageKey.Bag;
    }

    public initCache() {
        let _t = this;
        let data: any = _t.readStorage();
        if (data) {
            for (let k in data) {
                let key = +k;
                switch (key) {
                    case Enum_BagCache.items:
                        let info = data[k];
                        let map = _t.getItemMap();
                        if (info) {
                            for (let kk in info) {
                                let dd = info[kk];
                                let vo = map[kk] || Vo_Item.create(+kk, dd[2] || 0);
                                vo.count = dd[2] || 0;
                                map[kk] = vo;
                            }
                        }
                        break;
                }
            }
        }
    }

    public getOfflineData() {
        let data: any = {};
        data.gold = Game.Model.hero.vo.gold;
        data.items = {};
        let map = this.getItemMap();
        for (let k in map) {
            data.items[k] = map[k].count;
        }
        return data;
    }


    /**
     * 获取物品列表
     * @returns 
     */
    public getItemMap() {
        return this.cacheVo.getMap<Record<string | number, Vo_Item>>(Enum_BagCache.items, true);
    }

    /**
     * 获取物品数量
     * @param id 物品id
     */
    public getItemCount(id: number | string): number {
        return this.getItemMap()[id]?.count || 0;
    }

    /**
     * 获取物品
     * @param id 物品id
     */
    public getItemVo(id: number | string) {
        return this.getItemMap()[id];
    }

    /**
     * 获取物品或货币数量
     * @param type 物品或货币类型
     * @param id 物品id
     * @returns 
     */
    public getCount(type: number, id?: number | string) {
        if (type == EnumKey.ITEM) {
            return this.getItemCount(id);
        } else {
            return Game.Model.hero.vo.getVal(type);
        }
    }

    /**
     * 检测消耗物品列表是否足够
     * @param list 物品列表，每个物品为[type, id, num]
     * @param isMsg 是否显示提示，默认true
     * @returns 是否有足够的物品
     */
    public checkUseList(list: number[][], isMsg: boolean = true) {
        for (let i = 0; i < list.length; i++) {
            if (!this.checkUseOne(list[i], isMsg)) {
                return false;
            }
        }
        return true;
    }

    /**
     * 检测消耗一个物品是否足够
     * @param list [type, id, num]
     * @param isMsg 是否显示提示，默认true
     * @returns 
     */
    public checkUseOne(list: number[], isMsg: boolean = true) {
        return ConfigUtils.checkEnough(list[0], list[1], list[2], isMsg);
    }
    /**
     * 检测消耗一个物品或属性值是否足够
     * @param type 物品或属性类型
     * @param id 物品或属性id
     * @param num 需要的数量
     * @param isMsg 是否显示提示，默认true
     * @returns 
     */
    public checkUse(type: number, id: number, num: number, isMsg: boolean = true) {
        return ConfigUtils.checkEnough(type, id, num, isMsg);
    }

    /**
     * 模拟使用物品，足够就直接扣除道具
     * @param list 
     */
    public isSimulateUse(list: number[][]) {
        if (this.checkUseList(list, true)) {
            this.simulateUseGood(list);
            return true;
        }
        return false;
    }

    /**
     * 模拟添加物品列表，增加背包道具
     * @param type 通知类型 0无感 1飘字 2弹窗
     * @param list 物品列表，每个物品为[type, id, num]
     */
    public simulateAddGood(type: number, list: number[][]) {
        if (!list || list.length == 0) return;
        let _t = this;
        let map: Record<string, number[]> = {};
        let sorts: string[] = [];
        for (let i = 0, len = list.length; i < len; i++) {
            let item = list[i];
            let type = item[0];
            let id = item[1];
            let num = item[2];
            let key = `${type}-${id}`;
            let cache = map[key];
            if (!cache) {
                cache = map[key] = [type, id, 0];
                sorts.push(key);
            }
            cache[2] += num;
        }
        let result: number[][] = [];
        for (let i = 0, len = sorts.length; i < len; i++) {
            let key = sorts[i];
            let cache = map[key];
            let type = cache[0];
            let id = cache[1];
            let num = cache[2];
            if (type == EnumKey.ITEM) {
                // 判断是否自动使用道具
                let itemType = Config_daoju_102.getLByKey(id);
                if (itemType) {
                    let fun = _t._useFunMap[itemType];
                    if (fun) {
                        fun(_t, type, id, num);
                        continue;
                    }
                }
            }
            let current = _t.getCount(type, id);
            cache.push(current + num);
            result.push(cache);
        }
        if (result.length > 0)
            _t.CG164(type, 0, result);
    }

    /**
     * 模拟使用物品列表，扣除背包道具
     * @param list 物品列表，每个物品为[type, id, num]
     */
    public simulateUseGood(list: number[][]) {
        if (!list || list.length == 0) return;
        let map: Record<string, number[]> = {};
        let sorts: string[] = [];
        for (let i = 0, len = list.length; i < len; i++) {
            let item = list[i];
            let type = item[0];
            let id = item[1];
            let num = item[2];
            let key = `${type}-${id}`;
            let cache = map[key];
            if (!cache) {
                cache = map[key] = [type, id, 0];
                sorts.push(key);
            }
            cache[2] += num;
        }

        let result: number[][] = [];
        for (let i = 0, len = sorts.length; i < len; i++) {
            let key = sorts[i];
            let cache = map[key];
            let num = cache[2];
            let current = this.getCount(cache[0], cache[1]);
            if (current < num) {
                num = current = 0;
            }
            cache.push(current - num);
            result.push(cache);
        }
        this.CG164(0, 1, result);
    }

    //协议处理
    protected registerCmd(t: this, mgr: SocketMgr) {
        t.socket = mgr;
        //注册GC方法
        mgr.listen(160, t.GC160, t);
        mgr.listen(162, t.GC162, t);
        mgr.listen(164, t.GC164, t);
    }

    /**160 [I-L] 推送背包数据 [I:道具标识L:当前数量]道具背包arr0*/
    protected GC160(t: Model_Bag, data: BaseBytes): void {
        let map = t.getItemMap();
        // 先清理数据
        for (let k in map) {
            let vo = map[k];
            delete map[k];
            vo.recover();
        }
        let len = data.readShort();
        for (let i = 0; i < len; i++) {
            let arg1 = data.readInt();
            let arg2 = data.readLong();
            let vo = map[arg1] || Vo_Item.create(arg1, arg2);
            vo.count = arg2;
            map[arg1] = vo;
        }
        t.saveStorage();
        t.emit(EnumMsg.BAG_ITEM_UPDATE);
    }

    /**160 [I-L] 推送背包数据 [I:道具标识L:当前数量]道具背包arr0*/
    public CG160(arg1: number[][]): void {
        var bates = this.getBytes();
        var len = arg1.length;
        bates.writeShort(len);
        for (let i = 0; i < len; i++) {
            let item = arg1[i];
            bates.writeInt(item[0]);
            bates.writeLong(item[1]);
        }
        this.simulateCmd(160, bates);
    }

    /**161 I-I 使用道具 I:道具标识itemIdI:使用数量num*/
    public CG161(arg1: number, arg2: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        bates.writeInt(arg2);
        this.sendCmd(161, bates);
    }

    /**162 B-I-I 使用道具 B:0失败1成功2道具不足stateI:道具标识itemIdI:使用数量num*/
    protected GC162(t: Model_Bag, data: BaseBytes): void {
        let arg1 = data.readByte();
        let arg2 = data.readInt();
        let arg3 = data.readInt();
        if (arg1 == 1) {

        } else {
            // let tid = 155;
            // if (arg1 == 2) {
            // 	tid = 101;
            // }
            // Vw_Msg.setCfgTxt(tid);
        }
    }

    /**162 B-I-I 使用道具 B:0失败1成功2道具不足stateI:道具标识itemIdI:使用数量num*/
    public CG162(arg1: number, arg2: number, arg3: number): void {
        var bates = this.getBytes();
        bates.writeByte(arg1);
        bates.writeInt(arg2);
        bates.writeInt(arg3);
        this.simulateCmd(162, bates);
    }

    /**163 I-[B-I] 使用可选礼包道具 I:道具标识itemId[B:可选目标下标，从0开始I:选择数量]选择信息param*/
    public CG163(arg1: number, arg2: number[][]): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        var len = arg2.length;
        bates.writeShort(len);
        for (let i = 0; i < len; i++) {
            bates.writeByte(arg2[i][0]);
            bates.writeInt(arg2[i][1]);
        }
        this.sendCmd(163, bates);
    }

    /**164 B-B-[B-I-L-L] 推送资源变更 B:通知类型 0无感知1飘字2弹窗noticeTypeB:0增加1减少type[B:资源类型I:资源标识L:变化数量L:当前数量]变更数据arr1*/
    protected GC164(t: Model_Bag, data: BaseBytes): void {
        let l: number[][] = [];
        let arg1 = data.readByte();
        let arg2 = data.readByte();
        let upType = 0;
        let len = data.readShort();

        let map = t.getItemMap();

        for (let i = 0; i < len; i++) {

            let arg3 = data.readByte();
            let arg4 = data.readInt();
            let arg5 = data.readLong();
            let arg6 = data.readLong();

            if (arg3 == EnumKey.ITEM) {
                upType |= 1;
                let vo = map[arg4];
                if (arg6 <= 0) {
                    if (vo) {
                        delete map[arg4];
                        vo.recover();
                    }
                } else {
                    !vo && (vo = Vo_Item.create(arg4, 0), map[arg4] = vo);
                    vo.count = arg6;
                }
            } else {
                upType |= 2;
                Game.Model.hero.vo.setVal(arg3, arg6);
            }

            if (arg2 == 0) {
                l.push([arg3, arg4, arg5]);
            }
        }
        if (arg1 == 1) {
            if (l.length > 0) {
                Vw_Msg.setItems(l);
            }
        } else if (arg1 == 2) {
            if (l.length > 0) {
                Game.Model.openByObj(Vw_RewardAlert, { list: l });
            }
        }
        if (upType > 0) {
            if (upType & 1) {
                t.saveStorage();
                t.emit(EnumMsg.BAG_ITEM_UPDATE);
            }
            if (upType & 2) {
                Game.Model.hero.saveStorage();
                t.emit(EnumMsg.Role_Val);
            }
        }
    }

    /**164 B-B-[B-I-L-L] 推送资源变更 B:通知类型 0无感知1飘字2弹窗noticeTypeB:0增加1减少type[B:资源类型I:资源标识L:变化数量L:当前数量]变更数据arr1*/
    public CG164(arg1: number, arg2: number, arg3: number[][]): void {
        var bates = this.getBytes();
        bates.writeByte(arg1);
        bates.writeByte(arg2);
        var len = arg3.length;
        bates.writeShort(len);
        for (let i = 0; i < len; i++) {
            let item = arg3[i];
            bates.writeByte(item[0]);
            bates.writeInt(item[1]);
            bates.writeLong(item[2]);
            bates.writeLong(item[3]);
        }
        this.simulateCmd(164, bates);
    }

}