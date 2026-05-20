/**商店类型 */
export default class EnumShop {
    /**特权卡商店 */
    static readonly Card: number = 1;
    /**金币商店 */
    static readonly Gold: number = 2;
    /**广告商店 */
    static readonly Advertising: number = 3;
    /**道具商店 */
    static readonly Item: number = 4;
    /**关卡道具 */
    static readonly Checkpoints: number = 5;
}

export class ShopConst {
    /**战令商品id1 */
    static readonly warOrder_goodsId = 1001;
    /**广告卡商品id1 */
    static readonly ad_goodsId1 = 1002;
    /**广告卡礼包商品id2 */
    static readonly ad_goodsId2 = 3001;
}