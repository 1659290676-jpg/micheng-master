//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

//------------import------------
import Config_recharge_011 from './Ts/Config_recharge_011';
import Config_daoju_102 from './Ts/Config_daoju_102';
import Config_stage_001 from './Ts/Config_stage_001';
import Config_human_105 from './Ts/Config_human_105';
import Config_building_105 from './Ts/Config_building_105';
import Config_upgrade_105 from './Ts/Config_upgrade_105';
import Config_dinosaur_105 from './Ts/Config_dinosaur_105';
import Config_skill_105 from './Ts/Config_skill_105';
import Config_kgg_012 from './Ts/Config_kgg_012';
import Config_gm_link from './Ts/Config_gm_link';
import Config_gm from './Ts/Config_gm';
import Config_fireTrial_107 from './Ts/Config_fireTrial_107';
import Config_province_111 from './Ts/Config_province_111';
import Config_heroAttr_105 from './Ts/Config_heroAttr_105';
import Config_streakRank_106 from './Ts/Config_streakRank_106';
import Config_skin_301 from './Ts/Config_skin_301';
import Config_qd_115 from './Ts/Config_qd_115';
import Config_taskType_501 from './Ts/Config_taskType_501';
import Config_shop_101 from './Ts/Config_shop_101';
import Config_AttributeGrowth_105 from './Ts/Config_AttributeGrowth_105';
import Config_effect_105 from './Ts/Config_effect_105';
import Config_functionResource_101 from './Ts/Config_functionResource_101';
import Config_guide_001 from './Ts/Config_guide_001';
import Config_zl_104 from './Ts/Config_zl_104';
import Config_battlelevel_104 from './Ts/Config_battlelevel_104';
import Config_zlgm_104 from './Ts/Config_zlgm_104';
//------------import------------


/**表数据*/
export default class ConfigData {

    /**
     * 获取配置数据
     * @param cfgName 配置表名
     * @param key 配置表key
     */
    public static getCfgData(cfgName: string, key: string | number) {
        if(!(<any>ConfigData)[cfgName]) {
            console.error(cfgName + ": 配置数据不存在");
            return;
        }
        return (<any>ConfigData)[cfgName][key];
    }


	//------------分割线------------
	/**C_002_系统常量表.xlsx*/
	public static readonly common_002: Record<string, string>;
	//------------分割线------------
	/**C_011_充值总表.xlsx*/
	public static readonly recharge_011: Record<string, any[]>;
	/**C_011_充值总表.xlsx*/
	private static _recharge_011_VoMap: Record<string, Config_recharge_011>;
    /**
     * 获取 C_011_充值总表.xlsx 数据对应的 Config_recharge_011 实例
     * @param key 配置表key
     */
    public static getRecharge_011(key: string | number): Config_recharge_011 {
        let voMap = ConfigData._recharge_011_VoMap || (ConfigData._recharge_011_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_recharge_011.Key, key);
            voMap[key] = new Config_recharge_011(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**C_100_抽字.obj*/
	public static readonly text_100: Record<string, string>;
	//------------分割线------------
	/**D_102_道具系统.xlsx*/
	public static readonly daoju_102: Record<string, any[]>;
	/**D_102_道具系统.xlsx*/
	private static _daoju_102_VoMap: Record<string, Config_daoju_102>;
    /**
     * 获取 D_102_道具系统.xlsx 数据对应的 Config_daoju_102 实例
     * @param key 配置表key
     */
    public static getDaoju_102(key: string | number): Config_daoju_102 {
        let voMap = ConfigData._daoju_102_VoMap || (ConfigData._daoju_102_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_daoju_102.Key, key);
            voMap[key] = new Config_daoju_102(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**G_001_关卡.xlsx*/
	public static readonly stage_001: Record<string, any[]>;
	/**G_001_关卡.xlsx*/
	private static _stage_001_VoMap: Record<string, Config_stage_001>;
    /**
     * 获取 G_001_关卡.xlsx 数据对应的 Config_stage_001 实例
     * @param key 配置表key
     */
    public static getStage_001(key: string | number): Config_stage_001 {
        let voMap = ConfigData._stage_001_VoMap || (ConfigData._stage_001_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_stage_001.Key, key);
            voMap[key] = new Config_stage_001(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**G_105_关卡人类属性表.xlsx*/
	public static readonly human_105: Record<string, any[]>;
	/**G_105_关卡人类属性表.xlsx*/
	private static _human_105_VoMap: Record<string, Config_human_105>;
    /**
     * 获取 G_105_关卡人类属性表.xlsx 数据对应的 Config_human_105 实例
     * @param key 配置表key
     */
    public static getHuman_105(key: string | number): Config_human_105 {
        let voMap = ConfigData._human_105_VoMap || (ConfigData._human_105_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_human_105.Key, key);
            voMap[key] = new Config_human_105(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**G_105_关卡建筑表.xlsx*/
	public static readonly building_105: Record<string, any[]>;
	/**G_105_关卡建筑表.xlsx*/
	private static _building_105_VoMap: Record<string, Config_building_105>;
    /**
     * 获取 G_105_关卡建筑表.xlsx 数据对应的 Config_building_105 实例
     * @param key 配置表key
     */
    public static getBuilding_105(key: string | number): Config_building_105 {
        let voMap = ConfigData._building_105_VoMap || (ConfigData._building_105_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_building_105.Key, key);
            voMap[key] = new Config_building_105(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**G_105_关卡恐龙升级.xlsx*/
	public static readonly upgrade_105: Record<string, any[]>;
	/**G_105_关卡恐龙升级.xlsx*/
	private static _upgrade_105_VoMap: Record<string, Config_upgrade_105>;
    /**
     * 获取 G_105_关卡恐龙升级.xlsx 数据对应的 Config_upgrade_105 实例
     * @param key 配置表key
     */
    public static getUpgrade_105(key: string | number): Config_upgrade_105 {
        let voMap = ConfigData._upgrade_105_VoMap || (ConfigData._upgrade_105_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_upgrade_105.Key, key);
            voMap[key] = new Config_upgrade_105(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**G_105_关卡恐龙表.xlsx*/
	public static readonly dinosaur_105: Record<string, any[]>;
	/**G_105_关卡恐龙表.xlsx*/
	private static _dinosaur_105_VoMap: Record<string, Config_dinosaur_105>;
    /**
     * 获取 G_105_关卡恐龙表.xlsx 数据对应的 Config_dinosaur_105 实例
     * @param key 配置表key
     */
    public static getDinosaur_105(key: string | number): Config_dinosaur_105 {
        let voMap = ConfigData._dinosaur_105_VoMap || (ConfigData._dinosaur_105_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_dinosaur_105.Key, key);
            voMap[key] = new Config_dinosaur_105(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**G_105_关卡技能.xlsx*/
	public static readonly skill_105: Record<string, any[]>;
	/**G_105_关卡技能.xlsx*/
	private static _skill_105_VoMap: Record<string, Config_skill_105>;
    /**
     * 获取 G_105_关卡技能.xlsx 数据对应的 Config_skill_105 实例
     * @param key 配置表key
     */
    public static getSkill_105(key: string | number): Config_skill_105 {
        let voMap = ConfigData._skill_105_VoMap || (ConfigData._skill_105_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_skill_105.Key, key);
            voMap[key] = new Config_skill_105(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**G_112_看广告总表.xlsx*/
	public static readonly kgg_012: Record<string, any[]>;
	/**G_112_看广告总表.xlsx*/
	private static _kgg_012_VoMap: Record<string, Config_kgg_012>;
    /**
     * 获取 G_112_看广告总表.xlsx 数据对应的 Config_kgg_012 实例
     * @param key 配置表key
     */
    public static getKgg_012(key: string | number): Config_kgg_012 {
        let voMap = ConfigData._kgg_012_VoMap || (ConfigData._kgg_012_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_kgg_012.Key, key);
            voMap[key] = new Config_kgg_012(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**G_gmLink_下拉列表.xlsx*/
	public static readonly gm_link: Record<string, any[]>;
	/**G_gmLink_下拉列表.xlsx*/
	private static _gm_link_VoMap: Record<string, Config_gm_link>;
    /**
     * 获取 G_gmLink_下拉列表.xlsx 数据对应的 Config_gm_link 实例
     * @param key 配置表key
     */
    public static getGm_link(key: string | number): Config_gm_link {
        let voMap = ConfigData._gm_link_VoMap || (ConfigData._gm_link_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_gm_link.Key, key);
            voMap[key] = new Config_gm_link(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**G_gm表.xlsx*/
	public static readonly gm: Record<string, any[]>;
	/**G_gm表.xlsx*/
	private static _gm_VoMap: Record<string, Config_gm>;
    /**
     * 获取 G_gm表.xlsx 数据对应的 Config_gm 实例
     * @param key 配置表key
     */
    public static getGm(key: string | number): Config_gm {
        let voMap = ConfigData._gm_VoMap || (ConfigData._gm_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_gm.Key, key);
            voMap[key] = new Config_gm(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**H_107_火焰试炼连胜表.xlsx*/
	public static readonly fireTrial_107: Record<string, any[]>;
	/**H_107_火焰试炼连胜表.xlsx*/
	private static _fireTrial_107_VoMap: Record<string, Config_fireTrial_107>;
    /**
     * 获取 H_107_火焰试炼连胜表.xlsx 数据对应的 Config_fireTrial_107 实例
     * @param key 配置表key
     */
    public static getFireTrial_107(key: string | number): Config_fireTrial_107 {
        let voMap = ConfigData._fireTrial_107_VoMap || (ConfigData._fireTrial_107_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_fireTrial_107.Key, key);
            voMap[key] = new Config_fireTrial_107(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**I_111_IP属地.xlsx*/
	public static readonly province_111: Record<string, any[]>;
	/**I_111_IP属地.xlsx*/
	private static _province_111_VoMap: Record<string, Config_province_111>;
    /**
     * 获取 I_111_IP属地.xlsx 数据对应的 Config_province_111 实例
     * @param key 配置表key
     */
    public static getProvince_111(key: string | number): Config_province_111 {
        let voMap = ConfigData._province_111_VoMap || (ConfigData._province_111_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_province_111.Key, key);
            voMap[key] = new Config_province_111(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**J_005_角色属性.xlsx*/
	public static readonly heroAttr_105: Record<string, any[]>;
	/**J_005_角色属性.xlsx*/
	private static _heroAttr_105_VoMap: Record<string, Config_heroAttr_105>;
    /**
     * 获取 J_005_角色属性.xlsx 数据对应的 Config_heroAttr_105 实例
     * @param key 配置表key
     */
    public static getHeroAttr_105(key: string | number): Config_heroAttr_105 {
        let voMap = ConfigData._heroAttr_105_VoMap || (ConfigData._heroAttr_105_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_heroAttr_105.Key, key);
            voMap[key] = new Config_heroAttr_105(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**J_105_关卡假人名字库.xlsx*/
	public static readonly name_105: Record<string, string>;
	//------------分割线------------
	/**L_106_连胜排名奖励表.xlsx*/
	public static readonly streakRank_106: Record<string, any[]>;
	/**L_106_连胜排名奖励表.xlsx*/
	private static _streakRank_106_VoMap: Record<string, Config_streakRank_106>;
    /**
     * 获取 L_106_连胜排名奖励表.xlsx 数据对应的 Config_streakRank_106 实例
     * @param key 配置表key
     */
    public static getStreakRank_106(key: string | number): Config_streakRank_106 {
        let voMap = ConfigData._streakRank_106_VoMap || (ConfigData._streakRank_106_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_streakRank_106.Key, key);
            voMap[key] = new Config_streakRank_106(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**P_301_皮肤头像表.xlsx*/
	public static readonly skin_301: Record<string, any[]>;
	/**P_301_皮肤头像表.xlsx*/
	private static _skin_301_VoMap: Record<string, Config_skin_301>;
    /**
     * 获取 P_301_皮肤头像表.xlsx 数据对应的 Config_skin_301 实例
     * @param key 配置表key
     */
    public static getSkin_301(key: string | number): Config_skin_301 {
        let voMap = ConfigData._skin_301_VoMap || (ConfigData._skin_301_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_skin_301.Key, key);
            voMap[key] = new Config_skin_301(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**Q_115_渠道表.xlsx*/
	public static readonly qd_115: Record<string, any[]>;
	/**Q_115_渠道表.xlsx*/
	private static _qd_115_VoMap: Record<string, Config_qd_115>;
    /**
     * 获取 Q_115_渠道表.xlsx 数据对应的 Config_qd_115 实例
     * @param key 配置表key
     */
    public static getQd_115(key: string | number): Config_qd_115 {
        let voMap = ConfigData._qd_115_VoMap || (ConfigData._qd_115_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_qd_115.Key, key);
            voMap[key] = new Config_qd_115(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**R_501_任务类型汇总.xlsx*/
	public static readonly taskType_501: Record<string, any[]>;
	/**R_501_任务类型汇总.xlsx*/
	private static _taskType_501_VoMap: Record<string, Config_taskType_501>;
    /**
     * 获取 R_501_任务类型汇总.xlsx 数据对应的 Config_taskType_501 实例
     * @param key 配置表key
     */
    public static getTaskType_501(key: string | number): Config_taskType_501 {
        let voMap = ConfigData._taskType_501_VoMap || (ConfigData._taskType_501_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_taskType_501.Key, key);
            voMap[key] = new Config_taskType_501(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**S_101_商店.xlsx*/
	public static readonly shop_101: Record<string, any[]>;
	/**S_101_商店.xlsx*/
	private static _shop_101_VoMap: Record<string, Config_shop_101>;
    /**
     * 获取 S_101_商店.xlsx 数据对应的 Config_shop_101 实例
     * @param key 配置表key
     */
    public static getShop_101(key: string | number): Config_shop_101 {
        let voMap = ConfigData._shop_101_VoMap || (ConfigData._shop_101_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_shop_101.Key, key);
            voMap[key] = new Config_shop_101(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**S_105_恐龙属性养成.xlsx*/
	public static readonly AttributeGrowth_105: Record<string, any[]>;
	/**S_105_恐龙属性养成.xlsx*/
	private static _AttributeGrowth_105_VoMap: Record<string, Config_AttributeGrowth_105>;
    /**
     * 获取 S_105_恐龙属性养成.xlsx 数据对应的 Config_AttributeGrowth_105 实例
     * @param key 配置表key
     */
    public static getAttributeGrowth_105(key: string | number): Config_AttributeGrowth_105 {
        let voMap = ConfigData._AttributeGrowth_105_VoMap || (ConfigData._AttributeGrowth_105_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_AttributeGrowth_105.Key, key);
            voMap[key] = new Config_AttributeGrowth_105(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**T_105_特效配置.xlsx*/
	public static readonly effect_105: Record<string, any[]>;
	/**T_105_特效配置.xlsx*/
	private static _effect_105_VoMap: Record<string, Config_effect_105>;
    /**
     * 获取 T_105_特效配置.xlsx 数据对应的 Config_effect_105 实例
     * @param key 配置表key
     */
    public static getEffect_105(key: string | number): Config_effect_105 {
        let voMap = ConfigData._effect_105_VoMap || (ConfigData._effect_105_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_effect_105.Key, key);
            voMap[key] = new Config_effect_105(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**X_101_系统开启表.xlsx*/
	public static readonly functionResource_101: Record<string, any[]>;
	/**X_101_系统开启表.xlsx*/
	private static _functionResource_101_VoMap: Record<string, Config_functionResource_101>;
    /**
     * 获取 X_101_系统开启表.xlsx 数据对应的 Config_functionResource_101 实例
     * @param key 配置表key
     */
    public static getFunctionResource_101(key: string | number): Config_functionResource_101 {
        let voMap = ConfigData._functionResource_101_VoMap || (ConfigData._functionResource_101_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_functionResource_101.Key, key);
            voMap[key] = new Config_functionResource_101(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**Z_001_指引.xlsx*/
	public static readonly guide_001: Record<string, any[]>;
	/**Z_001_指引.xlsx*/
	private static _guide_001_VoMap: Record<string, Config_guide_001>;
    /**
     * 获取 Z_001_指引.xlsx 数据对应的 Config_guide_001 实例
     * @param key 配置表key
     */
    public static getGuide_001(key: string | number): Config_guide_001 {
        let voMap = ConfigData._guide_001_VoMap || (ConfigData._guide_001_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_guide_001.Key, key);
            voMap[key] = new Config_guide_001(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**Z_104_战令奖励.xlsx*/
	public static readonly zl_104: Record<string, any[]>;
	/**Z_104_战令奖励.xlsx*/
	private static _zl_104_VoMap: Record<string, Config_zl_104>;
    /**
     * 获取 Z_104_战令奖励.xlsx 数据对应的 Config_zl_104 实例
     * @param key 配置表key
     */
    public static getZl_104(key: string | number): Config_zl_104 {
        let voMap = ConfigData._zl_104_VoMap || (ConfigData._zl_104_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_zl_104.Key, key);
            voMap[key] = new Config_zl_104(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**Z_104_战令等级.xlsx*/
	public static readonly battlelevel_104: Record<string, any[]>;
	/**Z_104_战令等级.xlsx*/
	private static _battlelevel_104_VoMap: Record<string, Config_battlelevel_104>;
    /**
     * 获取 Z_104_战令等级.xlsx 数据对应的 Config_battlelevel_104 实例
     * @param key 配置表key
     */
    public static getBattlelevel_104(key: string | number): Config_battlelevel_104 {
        let voMap = ConfigData._battlelevel_104_VoMap || (ConfigData._battlelevel_104_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_battlelevel_104.Key, key);
            voMap[key] = new Config_battlelevel_104(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------
	/**Z_104_战令购买表.xlsx*/
	public static readonly zlgm_104: Record<string, any[]>;
	/**Z_104_战令购买表.xlsx*/
	private static _zlgm_104_VoMap: Record<string, Config_zlgm_104>;
    /**
     * 获取 Z_104_战令购买表.xlsx 数据对应的 Config_zlgm_104 实例
     * @param key 配置表key
     */
    public static getZlgm_104(key: string | number): Config_zlgm_104 {
        let voMap = ConfigData._zlgm_104_VoMap || (ConfigData._zlgm_104_VoMap = {});
        if (!voMap[key]) {
            let data = ConfigData.getCfgData(Config_zlgm_104.Key, key);
            voMap[key] = new Config_zlgm_104(data || []);
        }
        return voMap[key];
    }
	//------------分割线------------

	/**清除缓存表数据*/
	public static clear() {
		//------------clear------------
		ConfigData._recharge_011_VoMap = null;
		ConfigData._daoju_102_VoMap = null;
		ConfigData._stage_001_VoMap = null;
		ConfigData._human_105_VoMap = null;
		ConfigData._building_105_VoMap = null;
		ConfigData._upgrade_105_VoMap = null;
		ConfigData._dinosaur_105_VoMap = null;
		ConfigData._skill_105_VoMap = null;
		ConfigData._kgg_012_VoMap = null;
		ConfigData._gm_link_VoMap = null;
		ConfigData._gm_VoMap = null;
		ConfigData._fireTrial_107_VoMap = null;
		ConfigData._province_111_VoMap = null;
		ConfigData._heroAttr_105_VoMap = null;
		ConfigData._streakRank_106_VoMap = null;
		ConfigData._skin_301_VoMap = null;
		ConfigData._qd_115_VoMap = null;
		ConfigData._taskType_501_VoMap = null;
		ConfigData._shop_101_VoMap = null;
		ConfigData._AttributeGrowth_105_VoMap = null;
		ConfigData._effect_105_VoMap = null;
		ConfigData._functionResource_101_VoMap = null;
		ConfigData._guide_001_VoMap = null;
		ConfigData._zl_104_VoMap = null;
		ConfigData._battlelevel_104_VoMap = null;
		ConfigData._zlgm_104_VoMap = null;
		//------------clear------------
	}
}
//-----------------------------------
// 上方自动生成，请勿修改！！！
//-----------------------------------
