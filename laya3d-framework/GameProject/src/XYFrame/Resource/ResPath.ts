import ConfigData from "../../DataStock/ConfigData/ConfigData";
import { EnumAltas } from "../../Game/EnumAtlas";

const { regClass, property } = Laya;

/**
 * @ Author: XXL
 * @ Date: 2026-01-23 18:34
 * @ Description: 资源路径
*/
@regClass()
export default class ResPath {

    //文件扩展名
    /**png文件扩展名*/
    static readonly EXT_PNG = ".png";
    /**jpg文件扩展名*/
    static readonly EXT_JPG = ".jpg";
    /**webp文件扩展名*/
    static readonly EXT_WEBP = ".webp";
    /**json文件扩展名*/
    static readonly EXT_JSON = ".json";
    /**txt文件扩展名*/
    static readonly EXT_TXT = ".txt";
    /**mp3文件扩展名*/
    static readonly EXT_MP3 = ".mp3";
    /**wav文件扩展名*/
    static readonly EXT_WAV = ".wav";
    /**ogg文件扩展名*/
    static readonly EXT_OGG = ".ogg";
    /**mp4文件扩展名*/
    static readonly EXT_MP4 = ".mp4";
    /**skel文件扩展名*/
    static readonly EXT_SKEL = ".skel";
    /**atlas文件扩展名*/
    static readonly EXT_ATLAS = ".atlas";
    /**fgui文件扩展名*/
    static readonly EXT_FUI = ".fui";
    /**字体ttf文件扩展名*/
    static readonly EXT_TTF = ".ttf";
    /**zip文件扩展名*/
    static readonly EXT_ZIP = ".zip";
    /**ktx文件扩展名*/
    static readonly EXT_KTX = ".ktx";
    /**prefab文件扩展名*/
    static readonly EXT_PREFAB = ".lh";
    /**场景文件扩展名*/
    static readonly EXT_SCENE = ".ls";

    /** 资源跟目录 */
    public static readonly RES_ROOT = "resources/";
    /** 音频目录  包含了resources/ */
    public static readonly RES_AUDIO_DIR = ResPath.RES_ROOT + "audio/";
    /** 配置目录  包含了resources/ */
    public static readonly RES_CFG_DIR = ResPath.RES_ROOT + "cfg/";
    /** 单图目录  包含了resources/ */
    public static readonly RES_IMG_DIR = ResPath.RES_ROOT + "image/";
    /** 地图目录  包含了resources/ */
    public static readonly RES_MAP_DIR = ResPath.RES_ROOT + "map/";
    /** 2d帧动画  包含了resources/ */
    public static readonly RES_MOVIE_DIR = ResPath.RES_ROOT + "movie/";
    /** 场景目录  包含了resources/ */
    public static readonly RES_SCENE_DIR = ResPath.RES_ROOT + "scene/";
    /**spine动画目录  包含了resources/ */
    public static readonly RES_SPINE_DIR = ResPath.RES_ROOT + "spine/";
    /** UI目录 包含了resources/ */
    public static readonly RES_UI = ResPath.RES_ROOT + "ui/";
    /** UI图集目录 包含了resources/ */
    public static readonly UI_ALTAS = ResPath.RES_UI + "atlas/";
    /** UI图集目录 不包含resources/ */
    public static readonly UI_ATLAS2 = "ui/atlas/";
    /** UI预制体目录 包含了resources/ */
    public static readonly UI_PREFAB = ResPath.RES_UI + "prefab/";
    /** UI预制体目录 不包含resources/ */
    public static readonly UI_PREFAB2 = "ui/prefab/";

    /**身体目录*/
    static readonly BODY_DIR = "body/";
    /**坐骑目录*/
    static readonly HORSE_DIR = "horse/";
    /**武器目录*/
    static readonly WEAPON_DIR = "weapon/";
    /**翅膀目录*/
    static readonly WING_DIR = "wing/";

    public static getMapPath(id: number) {
        return ResPath.combine(ResPath.RES_MAP_DIR, id + "/") + "map" + ResPath.EXT_JSON;
    }

    /**
     * 获取地图图片路径
     * @param id 地图id
     * @param res 资源路径
     * @returns 地图图片路径
     */
    public static getMapImgPath(id: number | string, res: string) {
        return ResPath.combine(ResPath.RES_MAP_DIR, id + "/", "bg");
    }

    /**
     * 获取拼接地图图片路径
     * @param id 地图id
     * @param res 资源路径
     * @returns 拼接地图图片路径
     */
    public static getMapClipPath(id: number | string, res: string) {
        return ResPath.combine(ResPath.RES_MAP_DIR, id + "/", "clipmap/", res);
    }

    /**
     * 获取帧动画路径
     * @param path 路径
     * @returns 帧动画路径
     */
    public static getMoviePath(path: string) {
        return ResPath.combine(ResPath.RES_MOVIE_DIR, path);
    }

    /**
     * 获取帧动画特效路径
     * @param path 
     * @returns 
     */
    public static getMovieEffPath(path: string) {
        return ResPath.combine(ResPath.RES_MOVIE_DIR, "effect", path);
    }

    /**
     * 获取音频路径
     * @param path 路径
     * @returns 音频路径
     */
    public static getAudioPath(path: string) {
        return ResPath.combine(ResPath.RES_AUDIO_DIR, path);
    }

    /**
     * 获取spine动画路径
     * @param path 路径
     * @returns spine动画路径
     */
    public static getSpinePath(path: string) {
        return ResPath.combine(ResPath.RES_SPINE_DIR, path);
    }

    /**
     * 获取配置路径
     * @param path 路径
     * @returns 配置路径
     */
    public static getCfgPath(path: string) {
        return ResPath.combine(ResPath.RES_CFG_DIR, path);
    }

    /**
     * 获取图片路径
     * @param path 路径
     * @returns 图片路径
     */
    public static getImgPath(path: string) {
        return ResPath.combine(ResPath.RES_IMG_DIR, path);
    }

    /**
     * 获取ui图集资源路径
     * @param path 路径
     * @returns 
     */
    public static getUIAltasPath(path: string) {
        return ResPath.combine(ResPath.UI_ALTAS, path);
    }


    /**
     * 获取ui图集中单图的路径
     * @param atlas 图集名称(common)，或者单图路径(common/bg)不包含扩展名，也是对应的文件夹
     * @param res 单图图片名称，不包含扩展名
     * @returns 
     */
    public static getAtlasImgPath(atlas: string, res?: number | string) {
        if (res != null) {
            return ResPath.combine(ResPath.UI_ALTAS, `${atlas}/${res}${ResPath.EXT_PNG}`);
        } else {
            return ResPath.combine(ResPath.UI_ALTAS, `${atlas}${ResPath.EXT_PNG}`);
        }
    }

    /**
     * 获取ui预制体资源路径，包含resources/
     * @param path 路径
     * @returns 
     */
    public static getUIPrefab(path: string) {
        return ResPath.combine(ResPath.UI_PREFAB, path);
    }

    /**
     * 获取场景资源路径
     * @param path 路径
     * @returns 场景资源路径
     */
    public static getScenePath(path: string) {
        return ResPath.combine(ResPath.RES_SCENE_DIR, path);
    }

    /**
     * 获取模型路径
     * @param res 资源路径
     * @returns 模型路径
     */
    public static getBody(res: string | number) {
        return ResPath.combine(ResPath.BODY_DIR, res.toString());
    }

    /**
     * 获取坐骑路径
     * @param res 资源路径
     * @returns 坐骑路径
     */
    public static getHorse(res: string | number) {
        return ResPath.combine(ResPath.HORSE_DIR, res.toString());
    }

    /**
     * 获取武器路径
     * @param res 资源路径
     * @returns 武器路径
     */
    public static getWeapon(res: string | number) {
        return ResPath.combine(ResPath.WEAPON_DIR, res.toString());
    }

    /**
     * 获取翅膀路径
     * @param res 资源路径
     * @returns 翅膀路径
     */
    public static getWing(res: string | number) {
        return ResPath.combine(ResPath.WING_DIR, res.toString());
    }

    // /**
    //  * 获取称号路径
    //  * @param res 资源路径
    //  * @returns 称号路径
    //  */

    // public static getTitle(res: string | number) {
    //     return ResPath.combine(ResPath.TITLE_DIR, res.toString());
    // }

    // /**
    //  * 获取光环路径
    //  * @param res 资源路径
    //  * @returns 光环路径
    //  */
    // public static getHalo(res: string | number) {
    //     return ResPath.combine(ResPath.HALO_DIR, res.toString());
    // }

    /**根据头像id获取头像 */
    public static getHeadSrc(id: number) {
        let cfg = ConfigData.getSkin_301(id), res: string;
        if (cfg.icon) {
            res = ResPath.getAtlasImgPath(EnumAltas.Role, cfg.icon);
        }
        // t.btnHead.icon = res;
        return res
    }

    /**
     * 获取资源路径
     * @param path 路径
     * @returns 资源路径
     */
    public static getResPath(path: string) {
        if (path.indexOf("://") != -1) {
            return path;
        }
        return ResPath.combine(ResPath.RES_ROOT, path);
    }

    /**
     * 获取路径中的文件名（带扩展名）
     * @param path 路径字符串
     * @returns 文件名（如："file.txt"）
     */
    public static getFileName(path: string) {
        if (!path) return '';
        const normalizedPath = path.replace(/\\/g, '/');
        const parts = normalizedPath.split('/');
        return parts[parts.length - 1] || '';
    }

    /**
     * 获取路径中的文件名（不带扩展名）
     * @param path 路径字符串
     * @returns 文件名（如："file"）
     */
    public static getFileNameWithoutExtension(path: string): string {
        const fileName = ResPath.getFileName(path);
        const dotIndex = fileName.lastIndexOf('.');
        return dotIndex == -1 ? fileName : fileName.substring(0, dotIndex);
    }

    /**
     * 获取路径中的扩展名（带点）
     * @param path 路径字符串
     * @returns 扩展名（如：".txt"）
     */
    public static GetExtension(path: string): string {
        const fileName = ResPath.getFileName(path);
        const dotIndex = fileName.lastIndexOf('.');
        return dotIndex == -1 ? '' : fileName.substring(dotIndex);
    }


    /**
     * 获取路径中的文件路径
     * @param path 路径字符串
     * @returns 文件路径（如："C:/dir/file" 或 "/root/file"）
     */
    public static getFilePath(path: string): string {
        if (!path) return '';
        const normalizedPath = path.replace(/\\/g, '/');
        const parts = normalizedPath.split('/');
        let fileName = parts.pop();
        let dotIndex = fileName.lastIndexOf('.');
        if (dotIndex == -1) {
            return normalizedPath;
        }
        let dir = parts.join('/');
        fileName = fileName.substring(0, dotIndex);
        if (dir == "") {
            return fileName;
        }
        return dir + "/" + fileName;
    }

    /**
     * 获取路径中的文件夹路径
     * @param path 路径字符串
     * @returns 文件夹路径（如："C:/dir" 或 "/root"）
     */
    public static getDirectoryName(path: string): string {
        if (!path) return '';
        const normalizedPath = path.replace(/\\/g, '/');
        const parts = normalizedPath.split('/');
        parts.pop(); // 移除最后一个元素（文件名或空字符串）

        if (parts.length == 0) {
            return normalizedPath.includes(':') ? normalizedPath.split(':')[0] + '/' : '/';
        }

        const folderPath = parts.join('/');
        return folderPath.includes(':') ? folderPath : folderPath || '/';
    }

    /**
     * 组合多个路径片段
     * @param paths 路径片段数组
     * @returns 组合后的路径
     */
    public static combine(...paths: string[]): string {
        if (!paths || paths.length == 0) return '';

        let combined = paths[0];
        for (let i = 1; i < paths.length; i++) {
            const current = paths[i];
            if (!current) continue;

            if (combined.endsWith('/') || combined.endsWith('\\')) {
                combined += current;
            } else {
                combined += '/' + current;
            }
        }

        // 规范化路径分隔符
        return combined.replace(/[\\/]+/g, '/');
    }

}