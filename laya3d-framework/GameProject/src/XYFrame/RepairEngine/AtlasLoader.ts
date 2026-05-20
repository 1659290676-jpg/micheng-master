import LanguageMgr from "../../DataStock/LanguageMgr";

/**
 * @ Author: XXL
 * @ Date: 2026-03-03 09:55
 * @ Description: 图集加载器
*/
export default class AtlasLoader implements Laya.IResourceLoader {
    async load(task: Laya.ILoadTask) {
        return task.loader.fetch(task.url, "json", task.progress.createCallback(0.2), task.options).then(data => {
            if (!data)
                return null;

            let toloadPics: Array<Promise<Laya.Texture>> = [];
            if (data.meta && data.meta.image) {
                let folderPath: string = "";
                let i = task.url.lastIndexOf("/");
                if (i != -1)
                    folderPath = task.url.substring(0, i + 1);

                //如果图集带了版本号，需要将图集中包含的图片也需要追加版本号，以此解决浏览器缓存的问题
                let query: string = "";
                i = task.url.lastIndexOf("?");
                if (i != -1)
                    query = task.url.substring(i);

                //带图片信息的类型
                let pics: Array<string> = data.meta.image.split(",");
                for (let pic of pics) {
                    if (!pic.startsWith("res://"))
                        pic = folderPath + pic + query;
                    toloadPics.push(task.loader.load(pic, null, task.progress.createCallback()));
                }
            } else {  //不带图片信息
                toloadPics.push(task.loader.load(Laya.Utils.replaceFileExtension(task.url, "png"), null, task.progress.createCallback()));
            }

            return Promise.all(toloadPics).then(pics => {
                pics = pics.filter(pic => pic != null);
                let baseUrl = task.options.baseUrl || "";

                let url = task.url.substring(0, task.url.lastIndexOf(".")) + "/";
                let frames: any = data.frames;
                let directory: string = "";
                if (data.meta && data.meta.prefix != null) {
                    directory = data.meta.prefix;
                    if (directory.indexOf(LanguageMgr.localDir) != -1 && url != directory) {
                        directory = url;
                    }
                } else {
                    directory = url;
                }
                let subTextures: Array<Laya.Texture> = [];

                let scaleRate: number = 1;
                if (data.meta && data.meta.scale && data.meta.scale != 1)
                    scaleRate = parseFloat(data.meta.scale);

                for (let tPic of pics)
                    tPic.scaleRate = scaleRate;

                for (let name in frames) {
                    let obj = frames[name];
                    let tPic = pics[obj.frame.idx ? obj.frame.idx : 0];
                    if (!tPic)
                        continue;

                    let url = baseUrl + directory + (obj.filename || name);
                    let tt = Laya.Texture.create(tPic, obj.frame.x, obj.frame.y, obj.frame.w, obj.frame.h, obj.spriteSourceSize.x, obj.spriteSourceSize.y, obj.sourceSize.w, obj.sourceSize.h);
                    tt._sizeGrid = obj.sizeGrid;
                    tt._stateNum = obj.stateNum;
                    task.loader.cacheRes(url, tt);
                    tt.url = url;
                    subTextures.push(tt);
                }

                let res = <Laya.AtlasResource>task.obsoluteInst;
                if (res) {
                    res.update(pics, subTextures);
                    res.dir = directory;
                    res.animation = data.animation;
                    res.event("reload");
                    return res;
                }
                else {
                    res = new Laya.AtlasResource(directory, pics, subTextures);
                    res.animation = data.animation;
                    return res;
                }
            });
        });
    }
}

Laya.Loader.registerLoader(["atlas"], AtlasLoader, Laya.Loader.ATLAS, true);