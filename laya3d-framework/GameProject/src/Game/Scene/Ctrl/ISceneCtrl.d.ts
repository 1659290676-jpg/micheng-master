/**
 * @ Author: XXL
 * @ Date: 2026-03-20 15:46
 * @ Description: 场景控制类
*/
interface ISceneCtrl extends Laya.Script, IClear {
    /**
     * 进入场景
     * @returns {Promise<boolean>} true 表示进入成功
     */
    enter(): Promise<boolean>;
    /**
     * 退出场景
     */
    exit();
}