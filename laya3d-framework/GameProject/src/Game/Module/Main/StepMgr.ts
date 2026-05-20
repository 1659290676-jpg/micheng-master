import Singleton from "../../../XYFrame/Base/Singleton"
import { XYFrame } from "../../../XYFrame/XYFrame"
import { EnumMsg } from "../../EnumMsg"
import { EnumStep } from "./EnumStep"

/**主界面打开流程数据 */
export interface StepData {
    /**阶段类型 */
    stepType: EnumStep
    /**回调函数 */
    callFun: Function
    /**回调参数 */
    callArg?: any[]
    /**回调this */
    callObj?: any
}

export class StepMgr extends Singleton{
    private stepList: StepData[] = []

    public hasStepByType(stepType: EnumStep): boolean {
        for (let i = 0; i < this.stepList.length; i++) {
            if (this.stepList[i].stepType == stepType) {
                return true;
            }
        }
        return false;
    }

    public removeStepByType(stepType: EnumStep) {
        for(let i = this.stepList.length - 1; i >= 0; i--) {
            if (this.stepList[i].stepType == stepType) {
                this.stepList.splice(i, 1)
            }
        }
    }

    /**
     * 添加一个流程
     * @param stepType 阶段类型
     * @param callFun 回调函数
     * @param callArg 回调参数
     * @param callObj 回调this
     */
    public addStep(stepType: EnumStep, callFun: Function, callArg?: any[], callObj?: any) {
        this.stepList.push({ stepType, callFun, callArg, callObj })
    }

    /**添加一个流程 */
    public addStepData(stepData: StepData) {
        this.stepList.push(stepData)
    }

    /**触发流程（在自己流程结束的时候手动调用） */
    public triggerStep() {
        if (this.hasStep()) {
            let step = this.stepList.shift()
            XYFrame.Msg.emit(EnumMsg.STEP_UPDATE, step)
            if (step.callFun) {
                step.callFun(step.callObj, step.callArg)
            }
        }
    }

    /**获取是否有流程没执行 */
    public hasStep() {
        return this.stepList.length > 0
    }
}