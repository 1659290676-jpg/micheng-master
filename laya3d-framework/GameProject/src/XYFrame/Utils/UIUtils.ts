import Logger from "../Logger/Logger";

/**
 * @ Author: XXL
 * @ Date: 2026-02-02 20:56
 * @ Description: ui工具类
*/
export default class UIUtils {

    /**
     * 获取所有子节点的组件，会循环查找所有子节点，尽让少调用
     * @param owner 
     * @param type 
     * @param list 
     * @returns 
     */
    private static _getChildsComponent<T extends Laya.Component>(owner: Laya.Node, type: new () => T, list: T[]): T[] {
        let nodes = owner.children;
        if (nodes.length > 0) {
            for (let i = 0, len = nodes.length; i < len; i++) {
                let node = nodes[i];
                let comp = node.getComponent(type);
                if (comp) {
                    list.push(<any>comp);
                }
                if (node.children.length > 0) {
                    UIUtils._getChildsComponent(node, type, list);
                }
            }
        }
        return list;
    }

    /**
     * 获取所有子节点的组件，会循环查找所有子节点，尽让少调用
     * @param owner 节点
     * @param type 组件类型
     */
    public static getChildsComponent<T extends Laya.Component>(owner: Laya.Node, type: new () => T): T[] {
        return UIUtils._getChildsComponent(owner, type, []);
    }

    /**
     * 获取所有节点的组件，会循环查找所有子节点，尽让少调用
     * @param owner 
     * @param type 
     * @returns 
     */
    public static getComponents<T extends Laya.Component>(owner: Laya.Node, type: new () => T): T[] {
        let list = [];
        let comp = owner.getComponent(type);
        if (comp) {
            list.push(comp);
        }
        UIUtils._getChildsComponent(owner, type, list);
        return list;
    }

    /**
     * 获取节点下的组件
     * @param owner 
     * @param type 
     * @returns 
     */
    public static findComponent<T extends Laya.Component>(owner: Laya.Node, type: new () => T): T {
        let comp = owner.getComponent(type);
        if (comp) return comp;
        let nodes = owner.children;
        if (nodes.length > 0) {
            for (let i = 0, len = nodes.length; i < len; i++) {
                let node = nodes[i];
                comp = UIUtils.findComponent(node, type);
                if (comp) {
                    return comp;
                }
            }
        }
        return null;
    }

    /**
     * 清理list
     * @param list 
     */
    public static clearList(list: Laya.GList) {
        let num = list.numChildren;
        if (num > 0) {
            let child: any;
            for (let i = 0; i < num; i++) {
                child = list.getChildAt(i);
                if (child && child["clean"]) {//清理
                    child["clean"]();
                    child["data"] = null;
                }
            }
        }
    }

    /**
     * 设置list的itemRenderer
     * @param list 
     * @param isVirtual 是否虚拟列表，默认true
     * @param itemTemplate 列表项模板
     * @param itemProvider 提供列表中每个项目的模板资源
     */
    public static setList(list: Laya.GList, isVirtual = true, itemTemplate?: Laya.Prefab, itemProvider?: (index: number) => string) {
        list.itemRenderer = UIUtils.itemRenderer;
        itemTemplate && (list.itemTemplate = itemTemplate);
        list.itemProvider = itemProvider;
        isVirtual && list.setVirtual();
    }

    /**
     * 解析list的itemRenderer
     * @param index 
     * @param item 
     */
    protected static itemRenderer(index: number, item: any) {
        let t = this as any;
        let data = t.source[index];
        item.itemIndex = index;
        item.data = data;
        if (item.dataChanged) {
            item.dataChanged();
        } else if (item.setData) {
            item.setData(data);
        }
    }

    /**
     * 通过预设体路径创建UI实例
     * @param url 
     * @param type 
     * @returns 
     */
    public static createByUrl<T extends Laya.GWidget>(url: string, type: new () => T): T {
        let prefab = Laya.loader.getRes(url) as Laya.Prefab;
        if (!prefab) {
            Logger.error(`------UIUtils.createByUrl找不到预设体:${url}------`);
            return null;
        }
        let options = { runtime: type };
        let obj = prefab.create(options);
        return <T>obj;
    }

}