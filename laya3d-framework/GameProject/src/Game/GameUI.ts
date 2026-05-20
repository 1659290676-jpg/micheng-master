import { EnumUILayer } from "../XYFrame/UI/Layer/EnumUILayer";
import { XYFrame } from "../XYFrame/XYFrame";
import EnumUI from "./EnumUI";
import Vw_Arena from "./Module/Arena/Vw_Arena";
import Vw_Arena_Again from "./Module/Arena/Vw_Arena_Again";
import Vw_Arena_Guilde from "./Module/Arena/Vw_Arena_Guilde";
import Vw_Arena_Reward from "./Module/Arena/Vw_Arena_Reward";
import Vw_ItemDescTip from "./Module/Common/Vw_ItemDescTip";
import Vw_RewardAlert from "./Module/Common/Vw_RewardAlert";
import Vw_RewardTip from "./Module/Common/Vw_RewardTip";
import Vw_FireTrial_Enter from "./Module/fireTrial/Vw_FireTrial_Enter";
import Vw_FireTrial_Guide from "./Module/fireTrial/Vw_FireTrial_Guide";
import Vw_FireTrial_Main from "./Module/fireTrial/Vw_FireTrial_Main";
import Vw_FireTrial_Match from "./Module/fireTrial/Vw_FireTrial_Match";
import Vw_fireTrial_Win from "./Module/fireTrial/Vw_fireTrial_Win";
import Vw_Gm from "./Module/Gm/Vw_Gm";
import Vw_GmBtn from "./Module/Gm/Vw_GmBtn";
import Vw_GmProtocol from "./Module/Gm/Vw_GmProtocol";
import Vw_Login from "./Module/Login/Vw_Login";
import Vw_ServerList from "./Module/Login/Vw_ServerList";
import Vw_BuyStamina from "./Module/Main/Vw_BuyStamina";
import Vw_GuideLayer from "./Module/Main/Vw_GuideLayer";
import Vw_HeroAttribute from "./Module/Main/Vw_HeroAttribute";
import Vw_Main from "./Module/Main/Vw_Main";
import Vw_Error from "./Module/Role/Vw_Error";
import Vw_Role from "./Module/Role/Vw_Role";
import Vw_Role_Name from "./Module/Role/Vw_Role_Name";
import Vw_Role_Name_Sure from "./Module/Role/Vw_Role_Name_Sure";
import Vw_SceneLoading from "./Module/Scene/Vw_SceneLoading";
import Vw_Setting from "./Module/Setting/Vw_Setting";
import Vw_AdCard from "./Module/Shop/Vw_AdCard";
import Vw_Shop from "./Module/Shop/Vw_Shop";
import Vw_ShopAlone from "./Module/Shop/Vw_ShopAlone";
import Vw_BuySkill from "./Module/Stage/Vw_BuySkill";
import Vw_ExitStage from "./Module/Stage/Vw_ExitStage";
import Vw_Fail from "./Module/Stage/Vw_Fail";
import Vw_Pass from "./Module/Stage/Vw_Pass";
import Vw_SceneStage from "./Module/Stage/Vw_SceneStage";
import Vw_Stage from "./Module/Stage/Vw_Stage";
import Vw_Msg from "./Module/Tip/Vw_Msg";
import Vw_WarOrder from "./Module/WarOrder/Vw_WarOrder";
import Vw_WarOrderBuyTip from "./Module/WarOrder/Vw_WarOrderBuyTip";
import Vw_WarOrderGuideTip from "./Module/WarOrder/Vw_WarOrderGuideTip";

/**
 * @ Author: XXL
 * @ Date: 2026-03-05 09:55
 * @ Description: ui注册
*/
export default class GameUI {
    /**
     * 注册ui
     */
    public static register() {
        // 添加UI
        let uiMgr = XYFrame.UIMgr;
        let layer = EnumUILayer;
        uiMgr.register(0, Vw_GmBtn, layer.Guide, false);
        uiMgr.register(0, Vw_Gm, layer.Tips);
        uiMgr.register(0, Vw_GmProtocol, layer.Tips);
        uiMgr.register(0, Vw_Msg, layer.Mes, false);
        uiMgr.register(0, Vw_Login, layer.Guide, false);
        uiMgr.register(0, Vw_ServerList, layer.Guide);
        uiMgr.register(0, Vw_Main, layer.Normal, false);
        uiMgr.register(0, Vw_Stage, layer.Bottom, false);
        uiMgr.register(0, Vw_SceneStage, layer.Scene, false);

        uiMgr.register(0, Vw_SceneLoading, layer.Tips, false);
        uiMgr.register(0, Vw_BuyStamina, layer.Pop);

        uiMgr.register(0, Vw_Setting, layer.Pop);
        uiMgr.register(0, Vw_Fail, layer.Pop, true, false);
        uiMgr.register(0, Vw_Pass, layer.Pop, true, false);
        uiMgr.register(0, Vw_ExitStage, layer.Pop);
        uiMgr.register(0, Vw_BuySkill, layer.Pop);

        /**角色 */
        uiMgr.register(EnumUI.ROLE, Vw_Role, layer.Normal);
        uiMgr.register(0, Vw_Role_Name, layer.Pop);
        uiMgr.register(0, Vw_Role_Name_Sure, layer.Pop);
        uiMgr.register(0, Vw_Error, layer.Tips, true, false);

        /**战令 */
        uiMgr.register(EnumUI.WAR_ORDER, Vw_WarOrder, layer.Normal);
        uiMgr.register(0, Vw_WarOrderBuyTip, layer.Pop, true);
        uiMgr.register(0, Vw_WarOrderGuideTip, layer.Pop, true, false);
        /**指引 */
        uiMgr.register(0, Vw_GuideLayer, layer.Guide, false);

        uiMgr.register(0, Vw_ItemDescTip, layer.Pop, false);
        uiMgr.register(0, Vw_RewardAlert, layer.Pop, true);
        uiMgr.register(0, Vw_RewardTip, layer.Pop, false);

        /**竞技场 */
        uiMgr.register(EnumUI.ARENA, Vw_Arena, layer.Normal, true, false);
        uiMgr.register(0, Vw_Arena_Again, layer.Pop, true, false);
        uiMgr.register(0, Vw_Arena_Guilde, layer.Pop, true);
        uiMgr.register(0, Vw_Arena_Reward, layer.Pop, true);

        /**火焰试炼 */
        uiMgr.register(EnumUI.FIRE_TRIAL, Vw_FireTrial_Main, layer.Pop, true, false);
        uiMgr.register(0, Vw_FireTrial_Enter, layer.Pop);
        uiMgr.register(0, Vw_FireTrial_Match, layer.Pop);
        uiMgr.register(0, Vw_fireTrial_Win, layer.Pop);
        uiMgr.register(0, Vw_FireTrial_Guide, layer.Pop);

        // 商城
        uiMgr.register(0, Vw_Shop, layer.Bottom, false);
        uiMgr.register(0, Vw_ShopAlone, layer.Pop, false);
        // 广告卡
        uiMgr.register(0, Vw_AdCard, layer.Pop);

        // 属性
        uiMgr.register(0, Vw_HeroAttribute, layer.Pop);
    }
}