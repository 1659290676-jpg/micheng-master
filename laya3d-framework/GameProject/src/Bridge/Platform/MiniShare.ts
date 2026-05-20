
/**
 * @ Author: XXL
 * @ Date: 2023-06-29 10:58
 * @ Description: 小游戏分享
*/
export default class MiniShare {
	/**小游戏分享*/
	public constructor() {
		let _t = this;
		_t.titleDic = {
			"1": "别吹牛了，你连第2关都过不了"
		};
		_t.title2Dic = {};
		_t.imgList = [[1]];
	}

	/**分享缓存数据,date:日期,list:已分享的图片id*/
	private cacheData: { date: number, list: number[] };

	/**图片对应的描述,key:图片id,value:分享描述*/
	private titleDic: Record<string, string>;
	/**图片对应的描述,key:图片id,value:分享描述*/
	private title2Dic: Record<string, string>;
	/**图片组*/
	private imgList: number[][];

	private date = new Date();

	/**
	 * 设置分享数据
	 * @param title 标题map 
	 * @param imgs 分享的图片列表
	 */
	public setData(data: { title?: Record<string, string>, imgs?: number[][], title2?: Record<string, string> }) {
		data.title && (this.titleDic = data.title);
		data.imgs && (this.imgList = data.imgs);
		data.title2 && (this.title2Dic = data.title2);
	}

	/**获取分享已缓存的数据*/
	public getCache() {
		let _t = this;
		let data = _t.cacheData;
		if (!data) {
			data = Laya.LocalStorage.getJSON("shareCache");
			if (!data) {
				data = _t.cacheData = { date: 0, list: [] };
			} else {
				if (!data.list) data.list = [];
				_t.cacheData = data;
			}
		}

		//判断是否当天分享,不是进行清理
		_t.date.setTime(Date.now());
		let date = _t.date.getDate();
		if (data.date != date) {
			data.date = date;
			data.list.length = 0;
		}
		return _t.cacheData;
	}

	/**获取分享图片和标题*/
	public getShare() {
		let _t = this;
		let cache = _t.getCache();
		let cList = cache.list;
		//当天随机的组
		let zu = cache.date % _t.imgList.length;
		let list = _t.imgList[zu];
		if (cList.length >= list.length) {
			//已全部随机完，重新随机
			cList.length = 0;
		}

		let rlist: number[];//随机的队列
		if (cList.length == 0) {
			rlist = list;
		} else {
			//获取未分享的图片
			rlist = [];
			for (let i = 0, len = list.length; i < len; i++) {
				if (cList.indexOf(list[i]) == -1) {
					rlist.push(list[i]);
				}
			}
		}
		let img: number = rlist[Math.floor(Math.random() * rlist.length)];

		return { title: _t.titleDic[img] || _t.titleDic[1], img: img, title2: _t.title2Dic[img] || _t.title2Dic[1] };
	}

	/**缓存分享数据*/
	public saveCache(img: number) {
		let _t = this;
		let data = _t.getCache();
		data.list.push(img);
		Laya.LocalStorage.setJSON("shareCache", data);
	}

	/**分享图片的地址*/
	public getShareUrl(img: number) {
		let url = gameInfo.cdn + "share/" + img + ".jpg";
		// if (GameData.gameInfo.entry_ver) {
		// 	url += "?v=" + GameData.gameInfo.entry_ver;
		// }
		return url;
	}

}