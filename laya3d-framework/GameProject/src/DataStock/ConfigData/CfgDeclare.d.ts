//-----------------------------------
// 自动生成，请勿修改！！！
//-----------------------------------

//------------分割线------------
/**C_011_充值总表.xlsx*/
type Struct_recharge_011 = {
	/**充值类型
	 ** 1:战令
	 ** 2：广告卡
	 ** 3：商店-金币
	 ** 4：商店-礼包
	 ** 5:
	 ** 6：关卡失败礼包*/
	type: number,
	/**额度*/
	money: number,
	/**美元（100倍）*/
	m_usa: number,
	/**看广告次数*/
	adv: number,
	/**广告表Id*/
	adId: number,
	/**名称<已抽字>
	 ** 关联的货币类型
	 ** 元宝需把绑定跟非绑定都填上*/
	n: string,
	/**描述<已抽字>*/
	desc: string,
	/**首冲赠送钻石*/
	zs: number,
	/**充值返还钻石*/
	fh: number,
	/**充值返还道具*/
	dj: number[][],
	/**可充次数
	 ** 
	 ** 只充值一次还是可循环充值
	 ** 0为无限次*/
	c: number,
	/**关联*/
	g: number,
	/**代币购买
	 ** Administrator:
	 ** 0：不可代币购买
	 ** 1：可代币购买、代币不够则直接充值*/
	db: number,
	/**必须首充才能充值
	 ** DELL:
	 ** 0或不填：不需要
	 ** 1：需要*/
	sc: number,
	/**标签
	 ** admin:
	 ** 1：必备
	 ** 2：超值
	 ** 3：限时
	 ** 4：首充双倍*/
	bq: number,
	/**跳转链接
	 ** 
	 ** 用于判断活动充值*/
	tz: number[],
}
//------------分割线------------
/**D_102_道具系统.xlsx*/
type Struct_daoju_102 = {
	/**名字<已抽字>*/
	n: string,
	/**icon*/
	ic: number,
	/**堆叠上限
	 ** admin:
	 ** 不填没有上限
	 ** 填了多少就多少*/
	djsx: number,
	/**品质
	 ** 品质类型为
	 ** 1.白
	 ** 2.绿
	 ** 3.蓝
	 ** 4.紫
	 ** 5.橙
	 ** 6.红
	 ** 7.金
	 ** 8.粉
	 ** */
	p: number,
	/**道具类型
	 ** 1：材料
	 ** 2：随机礼包
	 ** 3：自选礼包
	 ** 4：无限体力
	 ** 5：上限体力
	 ** 6：头像皮肤*/
	l: number,
	/**可否快速购买
	 ** 1为快速购买商品类型，不填则不是*/
	kg: number,
	/**前端使用参数*/
	js: any,
	/**操作方式
	 ** 1手动使用，显示使用按钮
	 ** 2获得自动使用
	 ** */
	cz: number,
	/**物品描述<已抽字>*/
	ms: string,
	/**获取途径
	 ** 配置跳转表id
	 ** */
	tj: number[],
	/**外观展示
	 ** 1 伙伴皮肤
	 ** 后面加逗号为缩放比
	 ** 系统ID类型，模型id，缩放比*/
	wgzs: string,
}
//------------分割线------------
/**G_001_关卡.xlsx*/
type Struct_stage_001 = {
	/**场景资源*/
	map: string,
	/**奖励*/
	reward: number[][],
	/**关卡时间*/
	time: number,
	/**难度
	 ** 1困难2噩梦
	 ** */
	nd: number,
	/**关卡界面背景图片类型*/
	bg: number,
	/**战令钥匙*/
	key: number,
	/**连胜排行盾牌*/
	shield: number,
	/**建筑血量(建筑类型,血量)*/
	hp: number[][],
	/**关卡目标（目标类型,建筑类型,数量）
	 ** DELL:
	 ** 任务类型,建筑或人类型,数量;任务类型,建筑或人类型,数量
	 ** 目标类型
	 ** 1：摧毁建筑
	 ** 2：击杀小人和小恐龙
	 ** 3：击杀机器恐龙
	 ** */
	target: number[][],
	/**小人上限*/
	npc: number,
	/**机器恐龙上限
	 ** DELL:
	 ** 不配默认14*/
	aiMax: number,
	/**成长高机器恐龙数量
	 ** DELL:
	 ** 不配默认2*/
	aiUp: number,
	/**关卡名字<已抽字>*/
	name: string,
	/**关闭陨石功能*/
	meteor: number,
}
//------------分割线------------
/**G_105_关卡人类属性表.xlsx*/
type Struct_human_105 = {
	/**朝向*/
	cx: string,
	/**数量*/
	sl: number,
	/**经验*/
	jy: number,
	/**类型，区分目标*/
	type: number,
	/**类型区分增加经验显示*/
	expType: number,
	/**移动速度
	 ** DELL:
	 ** 每秒移动的厘米*/
	speed: number,
	/**模型*/
	mx: string,
	/**受击特效*/
	effect: string,
	/**关卡目标头像*/
	icon: string,
}
//------------分割线------------
/**G_105_关卡建筑表.xlsx*/
type Struct_building_105 = {
	/**图标*/
	icon: string,
	/**建筑类型
	 ** DELL:
	 ** 1:联排建筑
	 ** 2:车
	 ** 3：地标建筑（配了不会被其他AI恐龙撞）*/
	lx: number,
	/**血量*/
	xl: number,
	/**经验*/
	jy: number,
	/**破坏后刷新人类id*/
	jg: number,
	/**碰撞不后退
	 ** DELL:
	 ** 1:碰撞不后腿*/
	back: number,
	/**受击特效*/
	effect: string,
}
//------------分割线------------
/**G_105_关卡恐龙升级.xlsx*/
type Struct_upgrade_105 = {
	/**成长高恐龙经验*/
	highExp: number,
	/**一般成长恐龙经验*/
	lowExp: number,
	/**经验*/
	exp: number,
	/**被击杀对方获得经验*/
	kill: number,
	/**缩放*/
	scale: number,
	/**速度
	 ** DELL:
	 ** 每秒移动的厘米*/
	speed: number,
	/**攻击长度
	 ** DELL:
	 ** 攻击范围厘米
	 ** 场*宽=攻击范围，从恐龙脚底算起*/
	range: number,
	/**攻击宽度
	 ** DELL:
	 ** 攻击范围厘米*/
	wide: number,
	/**拾取物品获得经验*/
	pick: number,
	/**攻击系数*/
	atk: number,
	/**吞噬技能增加范围*/
	skillrange: number,
	/**加速技能增加速度*/
	skillspeed: number,
	/**升级技能增加经验*/
	skillexp: number,
}
//------------分割线------------
/**G_105_关卡恐龙表.xlsx*/
type Struct_dinosaur_105 = {
	/**初始等级*/
	dj: number,
	/**属性*/
	sx: number[][],
	/**模型(配了就固定，没配就在恐龙模型随机，优先取和主角不同的)*/
	mx: string,
	/**关卡目标头像*/
	icon: string,
}
//------------分割线------------
/**G_105_关卡技能.xlsx*/
type Struct_skill_105 = {
	/**名字<已抽字>*/
	n: string,
	/**消耗道具id*/
	item: number,
	/**对应购买的商店id*/
	shopId: number,
	/**持续时间
	 ** 作者:
	 ** 毫秒*/
	time: number,
	/**效果*/
	xg: number,
}
//------------分割线------------
/**G_112_看广告总表.xlsx*/
type Struct_kgg_012 = {
	/**微信小游戏1广告id*/
	aid1: string,
	/**抖音小游戏1广告id*/
	aid2: string,
}
//------------分割线------------
/**G_gmLink_下拉列表.xlsx*/
type Struct_gm_link = {
	/**链接其他表内容*/
	linkCfg: any,
	/**链接内容*/
	list: any,
}
//------------分割线------------
/**G_gm表.xlsx*/
type Struct_gm = {
	/**样式
	 ** 作者:
	 ** 1:物品链接库（自定义） 
	 ** 2.无连接 有输入框 
	 ** 3：没有输入框，不显示文本
	 ** 4：没有输入框，显示文本*/
	ys: number,
	/**大类型*/
	dlx: number,
	/**小类型*/
	xlx: number,
	/**标题描述
	 ** 作者:
	 ** 最多2个(,)逗号分开*/
	bt: string,
	/**对应的初始值
	 ** 作者:
	 ** 最多2个，逗号分开*/
	t: string,
	/**链接下拉框*/
	lj: string,
	/**链接下拉框2*/
	lj2: string,
	/**查询时间用到*/
	tc: number,
	/**特殊处理的函数*/
	hs: string,
}
//------------分割线------------
/**H_107_火焰试炼连胜表.xlsx*/
type Struct_fireTrial_107 = {
	/**最小人数,最大人数*/
	human: string,
}
//------------分割线------------
/**I_111_IP属地.xlsx*/
type Struct_province_111 = {
	/**省份*/
	pid: number,
	/**省名<已抽字>*/
	province: string,
}
//------------分割线------------
/**J_005_角色属性.xlsx*/
type Struct_heroAttr_105 = {
	/**属性名<已抽字>*/
	n: string,
	/**排序*/
	px: number,
	/**配置类型
	 ** 作者:
	 ** 1 直接数值
	 ** 2 百分比 配置值/100
	 ** 3 万分比 配置值/10000
	 ** 4 直接数值 配置值/10000*/
	lx: number,
	/**品质
	 ** 作者:
	 ** 1 白色
	 ** 2 绿色
	 ** 3 蓝色
	 ** 4 紫色
	 ** 5 橙色
	 ** 6 红色
	 ** 7 彩色*/
	p: number,
	/**图标*/
	i: string,
	/**获取途径*/
	tj: number[],
	/**物品标识
	 ** 作者:
	 ** 1.物品
	 ** 2.货币*/
	bs: number,
}
//------------分割线------------
/**L_106_连胜排名奖励表.xlsx*/
type Struct_streakRank_106 = {
	/**排名奖励*/
	reward: string,
	/**积分范围*/
	point: string,
	/**图标*/
	icon: string,
}
//------------分割线------------
/**P_301_皮肤头像表.xlsx*/
type Struct_skin_301 = {
	/**头像*/
	icon: string,
	/**皮肤材质名*/
	mat: string,
	/**光环色值*/
	halo: string,
	/**名字<已抽字>*/
	name: string,
	/**排序*/
	sort: number,
	/**激活类型
	 ** 和激活道具2选1
	 ** 类型1：通关关卡10
	 ** 类型2：看广告获得*/
	condi: number,
	/**条件目标*/
	target: number,
	/**激活道具
	 ** 激活使用的道具id*/
	item: string,
	/**是否不出现在关卡*/
	forLevel: number,
}
//------------分割线------------
/**Q_115_渠道表.xlsx*/
type Struct_qd_115 = {
	/**游戏圈链接*/
	link: string,
}
//------------分割线------------
/**R_501_任务类型汇总.xlsx*/
type Struct_taskType_501 = {
	/**任务名称<已抽字>*/
	m: string,
}
//------------分割线------------
/**S_101_商店.xlsx*/
type Struct_shop_101 = {
	/**商会类型
	 ** 对应商会重置表内的类型：
	 ** 1.特权卡
	 ** 2.金币商店
	 ** 3.广告礼包
	 ** 4.道具礼包
	 ** 5.关卡道具
	 ** */
	type: number,
	/**排序*/
	sort: number,
	/**商城名字<已抽字>*/
	name: string,
	/**出售道具
	 ** 道具类型,道具ID，道具数量*/
	item: string,
	/**解锁关卡*/
	unlock: number,
	/**金币价格*/
	goldPrice: string,
	/**充值ID*/
	rechargeId: number,
	/**是否看广告获得*/
	fromAds: number,
	/**功能id*/
	functionId: number,
}
//------------分割线------------
/**S_105_恐龙属性养成.xlsx*/
type Struct_AttributeGrowth_105 = {
	/**攻击系数万分比*/
	atk: number,
	/**攻击系数消耗金币*/
	atkCost: number,
	/**速度（每秒移动的厘米）*/
	speed: number,
	/**速度消耗金币*/
	speedCost: number,
	/**关卡攻击成长系数*/
	growth: number,
	/**成长消耗金币*/
	growthCost: number,
}
//------------分割线------------
/**T_105_特效配置.xlsx*/
type Struct_effect_105 = {
	/**播放时长*/
	time: number,
}
//------------分割线------------
/**X_101_系统开启表.xlsx*/
type Struct_functionResource_101 = {
	/**系统名称<已抽字>*/
	n: string,
	/**注册天数开启
	 ** 开服和开区天数不能一起配
	 ** */
	kf: number,
	/**通关关卡数*/
	gq: number,
	/**条件类型
	 ** 不配则前面配置的条件为且的关系，需要满足配置的所有参数才会开启系统
	 ** 配1则前面配置的条件为或的关系，需要满足配置参数其中1条即可开启*/
	t: number,
	/**是否显示
	 ** DELL:
	 ** 1：ios提审是不显示
	 ** 2：分享关闭时不显示
	 ** 统一提示9999关开启*/
	x: number,
	/**显示关卡数
	 ** admin:
	 ** 填具体关卡ID
	 ** */
	xsgq: number,
}
//------------分割线------------
/**Z_001_指引.xlsx*/
type Struct_guide_001 = {
	/**ui编号*/
	uiId: number,
	/**点击组件*/
	target: string,
	/**获取界面需要指引的组件*/
	getVwGuideTarget: string,
	/**自定义点击函数*/
	clickFun: string,
	/**手指方向
	 ** Administrator:
	 ** 0:没有手指
	 ** 1:在点击组件上面
	 ** 2:在点击组件右面
	 ** 3:在点击组件下面
	 ** 4:在点击组件左面*/
	handDir: number,
	/**自定义参数*/
	arg: string,
	/**指引说明<已抽字>*/
	des: string,
	/**需要监听的事件
	 ** Administrator:
	 ** 有多个事件时用,分割*/
	evt: string,
	/**完成的事件
	 ** Administrator:
	 ** 有多个事件时用,分割*/
	fevt: string,
	/**自定义检测函数*/
	checkFun: string,
	/**指引步骤开始函数*/
	enf: string,
	/**指引步骤结束函数*/
	exf: string,
}
//------------分割线------------
/**Z_104_战令奖励.xlsx*/
type Struct_zl_104 = {
	/**编号
	 ** 序号*/
	id: number,
	/**战令类型
	 ** admin:
	 ** 战令*/
	type: number,
	/**期数*/
	Issue: number,
	/**免费*/
	free: number[][],
	/**进阶版奖励*/
	advance: number[][],
	/**等级*/
	lv: number,
	/**免费奖励图标*/
	icon1: string,
	/**进阶版图标*/
	icon2: string,
}
//------------分割线------------
/**Z_104_战令等级.xlsx*/
type Struct_battlelevel_104 = {
	/**升到下一级所需经验*/
	exp: number,
}
//------------分割线------------
/**Z_104_战令购买表.xlsx*/
type Struct_zlgm_104 = {
	/**战令类型
	 ** 4：神兵寻宝战令
	 ** 5：绘本战令
	 ** 1107：精英战令
	 ** 1108：综合战令
	 ** 1109：飙升战令
	 ** 1111：奇境战令*/
	type: number,
	/**期数*/
	issue: number,
	/**充值id*/
	chargeid: number,
	/**立即获取奖励*/
	reward: number[][],
}
//------------分割线------------

//-----------------------------------
// 上方自动生成，请勿修改！！！
//-----------------------------------
