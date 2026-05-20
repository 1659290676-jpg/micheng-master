import BaseModel from "../../../XYFrame/Network/BaseModel";
import { XYFrame } from "../../../XYFrame/XYFrame";
import { EnumStorageKey } from "../../EnumStorageKey";
import Game from "../../Game";

const enum Enum_SettingCache {
    music_vol = 1,
    sound_vol = 2,
    shake = 3,
}


/**
 * @ Author: XXL
 * @ Date: 2026-04-14 17:21
 * @ Description: 设置
*/
export default class Model_Setting extends BaseModel {

    public getStorageKey(): string {
        return EnumStorageKey.Setting;
    }

    /**
     * 设置音乐音量
     * @param vol 音量0-100
     */
    public setMusicVol(vol: number) {
        if (vol < 0) {
            vol = 0;
        } else if (vol > 100) {
            vol = 100;
        }
        // this.cacheVo.setNum(Enum_SettingCache.music_vol, vol);
        this.setCacheNum(Enum_SettingCache.music_vol, vol);
        XYFrame.AudioMgr.setMusicVolume(vol / 100);
    }

    /**
     * 设置音效音量
     * @param vol 音量0-100
     */
    public setSoundVol(vol: number) {
        if (vol < 0) {
            vol = 0;
        } else if (vol > 100) {
            vol = 100;
        }
        // this.cacheVo.setNum(Enum_SettingCache.sound_vol, vol);
        this.setCacheNum(Enum_SettingCache.sound_vol, vol);
        XYFrame.AudioMgr.setSoundVolume(vol / 100);
    }

    public setShake(shake: boolean) {
        this.cacheVo.setBool(Enum_SettingCache.shake, shake);
        // 设置震动
    }

    /**
     * 获取音乐音量
     * @returns 
     */
    public getMusicVol(): number {
        let vol = this.getCacheNum(Enum_SettingCache.music_vol);
        if (vol == null) {
            vol = 100;
        }
        return vol;
    }

    /**
     * 获取音效音量
     * @returns 
     */
    public getSoundVol(): number {
        let vol = this.getCacheNum(Enum_SettingCache.sound_vol);
        if (vol == null) {
            vol = 100;
        }
        return vol;
    }

    /**
     * 获取震动
     * @returns 
     */
    public getShake(): boolean {
        let shake = this.getCacheBool(Enum_SettingCache.shake);
        if (shake == null) {
            shake = true;
        }
        return shake;
    }

    /**
     * 震动
     * @param type 震动类型 0短震动 1长震动
     * @returns 
     */
    public vibrate(type: 0 | 1) {
        if (!this.getShake()) return;
        Game.Bridge.vibrate(type);
    }

    public initCache() {
        let _t = this;
        let data: any = _t.readStorage();
        if (data) {
            for (let k in data) {
                let key = +k;
                let val = data[key];
                switch (key) {
                    case Enum_SettingCache.music_vol:
                        // _t.setMusicVol(data[key]);
                        if (val == null) {
                            val = 100;
                        }
                        XYFrame.AudioMgr.setMusicVolume(val / 100);
                        break;
                    case Enum_SettingCache.sound_vol:
                        if (val == null) {
                            val = 100;
                        }
                        XYFrame.AudioMgr.setSoundVolume(val / 100);
                        break;
                    case Enum_SettingCache.shake:
                        val = !!val;
                        break;
                }
            }
        }
    }
}