import { Runtime_Vw_ExitStageBase } from "./Runtime_Vw_ExitStage.generated";
            
const { regClass, property } = Laya;

/**
 * @ Author: 
 * @ Date: 2026/4/20 18:12:50
 * @ Description: 
*/
@regClass()
export default class Runtime_Vw_ExitStage extends Runtime_Vw_ExitStageBase {
    public arenaBgs: Laya.GImage[];
    public arenaLbs: Laya.GTextField[];
    onConstruct(): void {
        let _t = this;
        _t.arenaBgs = [_t.arenaBg0, _t.arenaBg1, _t.arenaBg2, _t.arenaBg3, _t.arenaBg4];
        _t.arenaLbs = [_t.lbArena0, _t.lbArena1, _t.lbArena2, _t.lbArena3, _t.lbArena4];
    }
}
