interface Vo_Gm {
    id: number;
    data?:string;
    server?: string;
    input1?: Vo_GmLink;
    input2?: Vo_GmLink;
    linkCall?: (_t: any, item: any, lbInput: Laya.GTextInput) => any;
    linkThis?: any;
}

interface Vo_GmLink { 
    text: string, 
    id: string|number, 
    cfg: any, 
    type?: number 
}

interface ProtocolData {
    /**协议号*/
    code: number;
    /**协议描述*/
    codeDetail: string;
    /**协议内容格式*/
    content: string;
    /**协议详情描述*/
    detailDesc: string;
    /**对应协议系统描述*/
    sysDesc: string;
}