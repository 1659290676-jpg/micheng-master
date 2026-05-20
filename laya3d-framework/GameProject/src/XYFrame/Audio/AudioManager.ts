const { regClass, property } = Laya;

import Singleton from "../Base/Singleton";
import Logger from "../Logger/Logger";
import ResPath from "../Resource/ResPath";

/**
 * @ Author: XXL
 * @ Date: 2026-01-23 18:12
 * @ Description: 音频管理器
*/
@regClass()
export default class AudioMananger extends Singleton {

    private _music_dir: string;
    private _talk_dir: string;
    private _skill_dir: string;
    private _ui_dir: string;

    /** 音乐停止标志  */
    private _musicFlag: (string | number)[];
    /** 音效停止标志  */
    private _soundFlag: (string | number)[];
    /** 音乐是否停止 */
    private _stop_music: boolean;
    /** 音效是否停止 */
    private _stop_sound: boolean;
    /** 音乐音量 */
    private _music_volume: number = 1;
    /** 音效音量 */
    private _sound_volume: number = 1;

    get musicVolume() {
        return this._music_volume;
    }

    get soundVolume() {
        return this._sound_volume;
    }

    protected onInit(): void {
        Logger.log("AudioMananger init");

        let _t = this;

        _t._music_dir = "music/";
        _t._talk_dir = "talk/";
        _t._skill_dir = "skill/";
        _t._ui_dir = "ui/";

        _t._musicFlag = [];
        _t._soundFlag = [];
        Laya.SoundManager.autoStopMusic = false;
        Laya.SoundManager.useAudioMusic = false;
        Laya.SoundManager.musicMuted = false;
        Laya.SoundManager.soundMuted = false;
    }

    /**
     * 设置所有音乐音效停止或播放标志
     * @param flag 标识
     * @param bo =true停止 false播放
     */
    public setFlag(flag: string | number, bo: boolean) {
        this.setMusicFlag(flag, bo);
        this.setSoundFlag(flag, bo);
    }
    /**
     * 设置所有音乐停止或播放标志
     * @param flag 标识
     * @param bo =true停止 false播放
     */
    public setMusicFlag(flag: string | number, bo: boolean) {
        let _t = this;
        let index = _t._musicFlag.indexOf(flag);
        if (bo) {
            if (index == -1) {
                _t._musicFlag.push(flag);
                if (!_t._stop_music) {
                    _t._stop_music = true;
                    _t._music_channel = null;
                    Laya.SoundManager.stopMusic();
                }
            }
        } else {
            if (index != -1) {
                _t._musicFlag.splice(index, 1);
                if (_t._musicFlag.length == 0) {
                    _t._stop_music = false;
                    if (_t._music_id) {
                        let id = _t._music_id;
                        _t._music_id = null;
                        _t.playMusic(id, _t._music_tm);
                    }
                }
            }
        }
    }

    /**
     * 设置所有音效停止或播放标志
     * @param flag 标识
     * @param bo =true停止 false播放
     */
    public setSoundFlag(flag: string | number, bo: boolean) {
        let _t = this;
        let index = _t._soundFlag.indexOf(flag);
        if (bo) {
            if (index == -1) {
                _t._soundFlag.push(flag);
                if (!_t._stop_sound) {
                    _t._stop_sound = true;
                    Laya.SoundManager.soundMuted = true;
                    Laya.SoundManager.stopAllSound();
                }
            }
        } else {
            if (index != -1) {
                _t._soundFlag.splice(index, 1);
                if (_t._soundFlag.length == 0) {
                    _t._stop_sound = false;
                    Laya.SoundManager.soundMuted = false;
                }
            }
        }
    }

    /**
     * 设置音乐音量
     * @param volume 音量 0-1 
     * @returns 
     */
    public setMusicVolume(volume: number) {
        let _t = this;
        if (_t._music_volume == volume) {
            return;
        }
        _t._music_volume = volume;
        Laya.SoundManager.musicVolume = volume;
        if (volume <= 0) {
            this.setMusicFlag("volume", true);
        } else {
            this.setMusicFlag("volume", false);
        }
        // if (volume > 0 && _t._music_channel == null && _t._music_id) {
        //     let id = _t._music_id;
        //     _t._music_id = null;
        //     _t.playMusic(id);
        // }
    }

    /**
     * 设置音效音量
     * @param volume 音量 0-1 
     */
    public setSoundVolume(volume: number) {
        if (volume <= 0) {
            this.setSoundFlag("volume", true);
        } else {
            this.setSoundFlag("volume", false);
            Laya.SoundManager.soundVolume = volume;
        }
    }

    /** 音乐播放id */
    private _music_id: string | number;
    /** 音乐播放上次停止时间 */
    private _music_tm: number;
    /** 音乐播放渠道 */
    private _music_channel: Laya.SoundChannel;
    /**
     * 播放音乐
     * @param id 音乐资源名，不需要扩展名 
     * @param start_tm 音乐播放开始时间(秒数)
     */
    public playMusic(id: string | number, start_tm = 0) {
        let _t = this;
        if (_t._music_id == id) {
            return;
        }
        _t._music_id = id;
        if (id && !_t._stop_music && _t._music_volume > 0) {
            let url = ResPath.getAudioPath(`${_t._music_dir}${id}.mp3`);
            _t._music_channel = Laya.SoundManager.playMusic(url, 0, null, start_tm || 0);
        } else {
            _t._music_channel = null;
            _t._music_tm = 0;
            Laya.SoundManager.stopMusic();
        }
    }

    /**
     * 播放UI音乐
     * @param id 
     * @param cache 播放完是否一直缓存
     */
    public playUI(id: string | number, cache = true) {
        let _t = this;
        if (_t._stop_sound) return;
        if (id) {
            let url = ResPath.getAudioPath(`${_t._ui_dir}${id}.mp3`);
            if (cache) {
                let channel = Laya.SoundManager.playSound(url, 1, () => {
                    Laya.SoundManager.stopSound(url);
                });
                return channel;
            } else {
                return Laya.SoundManager.playSound(url, 1);
            }
        }
    }

    /**
     * 停止播放UI音乐
     * @param id 
     */
    public stopUI(id: string | number) {
        if (id) {
            let url = ResPath.getAudioPath(`${this._ui_dir}${id}.mp3`);
            Laya.SoundManager.stopSound(url);
        }
    }

    /**
     * 播放点击音效
     */
    public playClick() {
        this.playUI("click");
    }


}