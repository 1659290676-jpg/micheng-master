import { BridgeManager } from "../../../Bridge/BridgeManager";
import ConfigData from "../../../DataStock/ConfigData/ConfigData";
import Config_AttributeGrowth_105 from "../../../DataStock/ConfigData/Ts/Config_AttributeGrowth_105";
import EnumKey from "../../../DataStock/GameData/EnumKey";
import Vo_Hero from "../../../DataStock/GameData/Vo_Hero";
import BaseBytes from "../../../XYFrame/Network/BaseBytes";
import BaseModel from "../../../XYFrame/Network/BaseModel";
import { SocketMgr } from "../../../XYFrame/Network/SocketMgr";
import Base64Utils from "../../../XYFrame/Utils/Base64Utils";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumMsg } from "../../EnumMsg";
import { EnumStorageKey } from "../../EnumStorageKey";
import Game from "../../Game";
import OfflineMgr from "../Offline/OfflineMgr";
import Vw_Error from "../Role/Vw_Error";
import Vw_Role from "../Role/Vw_Role";
import Vw_Msg from "../Tip/Vw_Msg";

const enum Enum_HeroCache {
    vo = 1,
}

/**
 * @ Author: XXL
 * @ Date: 2026-03-20 14:56
 * @ Description: 角色
*/
export default class Model_Hero extends BaseModel {

    protected _online_tm: number;


    public getStorageKey() {
        return EnumStorageKey.Hero;
    }

    public initCache() {
        let _t = this;
        let data: any = _t.readStorage();
        if (data) {
            for (let k in data) {
                let key = +k;
                switch (key) {
                    case Enum_HeroCache.vo:
                        _t.vo.setByStorage(data[k]);
                        break;
                }
            }
        }
    }

    public getOfflineData(isReconnect?: boolean) {
        let data: any = {};
        let vo = this.vo;
        data.name = vo.name;
        data.skinId = vo.headId;
        data.skinList = [];
        if (vo.skin) {
            for (let k in vo.skin) {
                data.skinList.push(+k);
            }
        }
        data.attrMap = {};
        data.attrMap[EnumKey.Attack] = vo.getBuy(EnumKey.Attack);
        data.attrMap[EnumKey.Speed] = vo.getBuy(EnumKey.Speed);
        data.attrMap[EnumKey.GrowUp] = vo.getBuy(EnumKey.GrowUp);
        return data;
    }

    public clearData(): void {
        this._online_tm = 0;
    }

    /**
     * 是否可离线玩
     */
    public get isOfflinePlay() {
        let vo = this.vo;
        let bo = vo.id > 0 && !!vo.isOfflineCard;
        return bo
    }

    /** 角色数据 */
    public get vo(): Vo_Hero {
        let vo = this.cacheVo.getVo<Vo_Hero>(Enum_HeroCache.vo);
        if (!vo) {
            vo = new Vo_Hero();
            this.cacheVo.setVo(Enum_HeroCache.vo, vo);
        }
        return vo;
    }

    /** 是否设置过名字 */
    public get isSetName() {
        return this.vo.name != "Player" && this.vo.name != "";
    }

    /**
     * 发送101登录协议
     * @param isReconnect 是否重连，默认false不是
     */
    public sendLogin(isReconnect?: boolean) {
        let bridge = BridgeManager.ins;

        let data: any = {};
        data.openid = bridge.userInfo.user_id;
        data.age = (bridge.userInfo.age || 0) + "";
        if (bridge.userInfo.avatarUrl) {
            data.headUrl = bridge.userInfo.avatarUrl;
            data.nickName = Base64Utils.encode(bridge.userInfo.nickName);
        }
        data.pf = bridge.info.pf;
        let device = bridge.device;
        data.device = {
            // ad_id: Model_Advert.adId + "",
            ad_id: "0",
            packageId: '',
            packageName: '',
            brand: device.brand || '',
            model: device.model || '',
            manufacturer: device.brand || '',
            system: device.system || '',
            systemType: device.platform || '',
            appVersion: device.appVersion,
            appName: device.appName,
            binVersion: bridge.getVer(),
            resVersion: bridge.getVer(),
            network_type: device.network_type,
            carrier: ""
        }
        data.channel_id = bridge.info.channel_id + "";
        data.reconnect = isReconnect ? "1" : "0";//0正常登录1重连
        data.appId = bridge.info.miniAppId ? bridge.info.miniAppId + "" : "";
        data.sdk = gameInfo.sdk + "";

        if (DEBUG) {
            data.model = "1";
        }

        this.CG101(JSON.stringify(data));
    }

    /**
     * 上报 0创号 1登录 2升级 3完成新手指引 4浏览商城页面 5浏览活动页面
     * @param type 
     */
    public report(type: number) {
        // 上报
        let _t = this;
        let roleData = _t.vo;
        let info = {
            role_id: roleData.id + "",
            role_level: (roleData.stage_lev || 1) + "",
            role_name: roleData.name || "undefined",
            server_id: (roleData.srvId || 1) + "",
            server_name: Game.Bridge.info.servSocket?.name || "undefined",
            vip_level: "0",
            role_power: "0",
            user_money: roleData.getVal(EnumKey.Gold) + "",
            create_time: Math.floor(roleData.create_tm / 1000) + "",
            gender: "",
            stage: roleData.stage_lev + "",
            online_time: (_t._online_tm > 0 ? Math.max(Laya.timer.currTimer - _t._online_tm, 0) : 0) + "",
            uid: BridgeManager.ins.userInfo.user_id,
            profession_id: "",//职业ID
            profession: "",//职业名称
            party_id: "",//帮派id
            party_name: "",//帮派名称
            party_level: "",//帮派等级
            party_role_id: "",//帮派称号ID
            party_role_name: "",//帮派称号名称
            glory_level: "",//战功等级
            today_charge: "",//角色当天充值金额（单位分）
            total_charge: "",//角色累计充值金额（单位分）
            first_create: "",//创建角色时，该用户是否首次创建游戏角色 0：非首次创建 1：首次创建，若无传""
            first_login: "",//登录角色时，该用户是否首次登录该角色 0：非首次登录 1：首次登录，若无传""
            pre_server_name: "",//登录角色时，用户上次登录的服务器的名称，若无传""

        };
        Game.Bridge.sdkReport(type, info);
    }

    public sendHeartbeat() {
        if(Game.isOnline && Game.isNetEnter) {
            this.CG109();
        }
    }


    //协议处理
    protected registerCmd(self: this, mgr: SocketMgr) {
        self.socket = mgr;
        //注册GC方法
        mgr.listen(100, self.GC100, self);
        mgr.listen(102, self.GC102, self);
        mgr.listen(104, self.GC104, self);
        mgr.listen(108, self.GC108, self);
        mgr.listen(110, self.GC110, self);
        mgr.listen(112, self.GC112, self);
        mgr.listen(122, self.GC122, self);
        mgr.listen(124, self.GC124, self);
        mgr.listen(126, self.GC126, self);
        mgr.listen(128, self.GC128, self);
    }

    /**100  发送初始化数据 */
    protected GC100(self: Model_Hero, data: BaseBytes, socketId: number): void {
        XYFrame.SocketMgr.getHandler().dealFromData(data, 100, socketId);
    }

    /**100  发送初始化数据 */
    public CG100(): void {
        var bates = this.getBytes();
        this.simulateCmd(100, bates);
    }


    /**101 U 请求登录 U:json字符串数据data*/
    public CG101(arg1: string): void {
        var bates = this.getBytes();
        bates.writeUTF(arg1);
        this.sendCmd(101, bates);
    }

    /**102 I-L-U-I-L 请求登录返回 I:区号zoneidL:角色ididU:角色名nameI:创号L:创号时间time*/
    protected GC102(self: Model_Hero, data: BaseBytes): void {
        let arg1 = data.readInt();
        let arg2 = data.readLong();
        let arg3 = data.readUTF();
        let arg4 = data.readInt();
        let arg5 = data.readLong();

        let vo = self.vo;

        if (vo.id && vo.id != arg2) {
            // id不一样，清理之前的数据
            Game.Model.clear();
            Game.SceneMgr.onExit(true);
        }

        let serverCfg = BridgeManager.ins.info.servSocket;
        serverCfg && (serverCfg.zoneId = arg1);
        vo.srvId = arg1;
        vo.id = arg2;
        vo.name = arg3;
        // vo.sex = arg4;
        vo.create_tm = arg5;
        self.saveStorage();
        self.emit(EnumMsg.IS_CREATED_ROLE);
        if (arg4)
            self.report(0);
    }

    /**102 I-L-U-I-L 请求登录返回 I:区号zoneidL:角色ididU:角色名nameI:性别sexL:创号时间time*/
    public CG102(arg1: number, arg2: number, arg3: string, arg4: number, arg5: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        bates.writeLong(arg2);
        bates.writeUTF(arg3);
        bates.writeInt(arg4);
        bates.writeLong(arg5);
        this.simulateCmd(102, bates);
    }

    /**103  前端成功加载 */
    public CG103(): void {
        var bates = this.getBytes();
        this.sendCmd(103, bates);
    }

    /**104  后端加载完成 */
    protected GC104(self: Model_Hero, data: BaseBytes): void {
        self._online_tm = Laya.timer.currTimer;
        self.emit(EnumMsg.SRV_READY);
    }

    /**104  后端加载完成 */
    public CG104(): void {
        var bates = this.getBytes();
        this.simulateCmd(104, bates);
    }


    /**108 U 角色属性 U:json格式data*/
    protected GC108(self: Model_Hero, data: BaseBytes): void {
        let arg1 = data.readUTF();
        let newData = JSON.parse(arg1);
        let flag = 0;
        if (self.vo.isAdUnlock != (!!newData[EnumKey.Key_Ad])) {
            flag |= 1;
        }
        if (self.vo.stage_lev != (newData[EnumKey.Key_Gq] ?? 0)) {
            flag |= 2;
        }
        self.vo.setData(newData);
        self.saveStorage();
        if (flag & 1) {
            self.emit(EnumMsg.UP_AD);
        }
        if (flag & 2) {
            self.emit(EnumMsg.STAGE_LEVEL);
        }
    }

    /**108 U 角色属性 U:json格式data*/
    public CG108(arg1: string): void {
        var bates = this.getBytes();
        bates.writeUTF(arg1);
        this.simulateCmd(108, bates);
    }

    /**109  心跳包 */
    public CG109(): void {
        var bates = this.getBytes();
        this.sendCmd(109, bates);
    }

    /**110 I 强制下线 I:11被顶号12踢下线13封号14维护中type*/
    protected GC110(self: Model_Hero, data: BaseBytes): void {
        let arg1 = data.readInt();
        OfflineMgr.handle(arg1 + 1);
        self.emit(EnumMsg.SRV_SEND_OFFLINE);
    }

    /**110 I 强制下线 I:11被顶号12踢下线13封号14维护中type*/
    public CG110(arg1: number): void {
        var bates = this.getBytes();
        bates.writeInt(arg1);
        this.simulateCmd(110, bates);
    }

    /**112 U 更新属性 U:json格式data*/
    protected GC112(self: Model_Hero, data: BaseBytes): void {
        let arg1 = data.readUTF();
        let info = JSON.parse(arg1);
        let vo = self.vo;
        let flag = 0;
        for (let k in info) {
            let v = info[k];
            switch (+k) {
                case EnumKey.Key_Ad:
                    flag |= 1;
                    vo.isAdUnlock = !!v;
                    break;
                case EnumKey.KEY_OFFLINE:
                    vo.isOfflineCard = !!v;
                    break;
            }
        }
        self.saveStorage();
        if (flag & 1) {
            self.emit(EnumMsg.UP_AD);
        }
    }

    /**112 U 更新属性 U:json格式data*/
    public CG112(arg1: string): void {
        var bates = this.getBytes();
        bates.writeUTF(arg1);
        this.simulateCmd(112, bates);
    }

    /**113 U-U 微信授权 U:微信名(base64转码)wechatNameU:微信头像wechatUrl*/
    public CG113(arg1: string, arg2: string): void {
        var bates = this.getBytes();
        bates.writeUTF(arg1);
        bates.writeUTF(arg2);
        this.sendCmd(113, bates);
    }

    /**121 U-I 改名 U:名字nameI:性别sex*/
    public CG121(arg1: string, arg2: number): void {
        var bates = this.getBytes();
        bates.writeUTF(arg1);
        bates.writeInt(arg2);
        this.sendCmd(121, bates);
    }

    /**122 I-U-I 改名返回 I:0成功stateU:名字nameI:性别sex*/
    protected GC122(self: Model_Hero, data: BaseBytes): void {
        let arg1 = data.readInt();
        let arg2 = data.readUTF();
        let arg3 = data.readInt();
        if (arg1 == 0) {
            let vo = self.vo;
            vo.name = arg2;
            vo.sex = arg3;
            self.saveStorage();
            self.emit(EnumMsg.UP_Name);
        } else {
            Vw_Msg.setCfgTxt(42);
        }
    }

    // /**122 I-U-I 改名返回 I:0成功stateU:名字nameI:性别sex*/
    // public CG122(arg1: number, arg2: string, arg3: number): void {
    //     var bates = this.getBytes();
    //     bates.writeInt(arg1);
    //     bates.writeUTF(arg2);
    //     bates.writeInt(arg3);
    //     this.simulateCmd(122, bates);
    // }

    /**123 I 选择头像 I:头像id（0为默认）id*/
    public CG123(arg1: number): void {
        if (Game.isOnline) {
            var bates = this.getBytes();
            bates.writeInt(arg1);
            this.sendCmd(123, bates);
        } else {
            // this.CG124(0, arg1);
            Vw_Error.open(3);
        }
    }

    /**124 I-I 选择头像返回 I:0成功stateI:头像idid*/
    protected GC124(self: Model_Hero, data: BaseBytes): void {
        let arg1 = data.readInt();
        let arg2 = data.readInt();
        if (arg1 == 0) {
            self.vo.headId = arg2;
            self.saveStorage();
            self.emit(EnumMsg.UP_Head);
            XYFrame.UIMgr.close(Vw_Role);
        } else {
            if (arg1 == 10) {
                Vw_Msg.setCfgTxt(815); // 未激活
            }
        }
    }

    // /**124 I-I 选择头像返回 I:0成功stateI:头像idid*/
    // public CG124(arg1: number, arg2: number): void {
    //     var bates = this.getBytes();
    //     bates.writeInt(arg1);
    //     bates.writeInt(arg2);
    //     this.simulateCmd(124, bates);
    // }

    /**125 S 属性升级购买 S:属性下标1:攻击 2:速度 3:成长index*/
    public CG125(arg1: number): void {
        if (Game.isOnline) {
            var bates = this.getBytes();
            bates.writeShort(arg1);
            this.sendCmd(125, bates);
        } else {
            let buy = this.vo.getBuy(arg1);
            let cost: number;
            if (arg1 == 1) {
                cost = Config_AttributeGrowth_105.getAtkCostByKey(buy);
            } else if (arg1 == 2) {
                cost = Config_AttributeGrowth_105.getSpeedCostByKey(buy);
            } else if (arg1 == 3) {
                cost = Config_AttributeGrowth_105.getGrowthCostByKey(buy);
            }
            if (!cost || !ConfigData.AttributeGrowth_105[buy + 1]) {
                Vw_Msg.setCfgTxt(5);// 已满级
                return;
            }
            if (Game.Model.bag.checkUse(EnumKey.Gold, 0, cost)) {
                Game.Model.bag.simulateUseGood([[EnumKey.Gold, 0, cost]]);
                this.CG126(0, arg1, buy + 1)
            }
        }
    }

    /**126 S-S-I 属性升级购买结果 S:0成功 1金币不足 2已满级stateS:属性下标indexI:等级level*/
    protected GC126(self: Model_Hero, data: BaseBytes): void {
        let arg1 = data.readShort();
        let arg2 = data.readShort();
        let arg3 = data.readInt();

        if (arg1 == 0) {
            self.vo.setBuy(arg2, arg3);
            self.saveStorage();
            self.emit(EnumMsg.ROLE_ATTR_UPDATE);
        } else if (arg1 == 1) {
            Vw_Msg.setCfgTxt(4);// 金币不足
        } else {
            Vw_Msg.setCfgTxt(5);// 已满级
        }
    }

    /**126 S-S-I 属性升级购买结果 S:0成功 1金币不足 2已满级stateS:属性下标indexI:等级level*/
    public CG126(arg1: number, arg2: number, arg3: number): void {
        var bates = this.getBytes();
        bates.writeShort(arg1);
        bates.writeShort(arg2);
        bates.writeInt(arg3);
        this.simulateCmd(126, bates);
    }

    /**128 [I] 新皮肤激活 [I:皮肤id]新皮肤skins*/
    protected GC128(self: Model_Hero, data: BaseBytes): void {
        let len = data.readShort();
        let vo = self.vo;
        for (let i = 0; i < len; i++) {
            let arg1 = data.readInt();
            vo.skin[arg1] = true;
        }
        self.saveStorage();
        self.emit(EnumMsg.UP_Head);
    }

    /**128 [I] 新皮肤激活 [I:皮肤id]新皮肤skins*/
    public CG128(arg1: number[]): void {
        var bates = this.getBytes();
        var len = arg1.length;
        bates.writeShort(len);
        for (let i = 0; i < len; i++) {
            bates.writeInt(arg1[i]);
        }
        this.simulateCmd(128, bates);
    }


}