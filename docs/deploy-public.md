# 把《咪城大师》发布成大家都能玩的网页

你的游戏是**纯前端**（HTML + JavaScript），不需要服务器，适合免费静态托管。

---

## 方案一：GitHub Pages（推荐，你已有仓库）

### 第一次开启（只需做一次）

1. 打开：https://github.com/1659290676-jpg/micheng-master/settings/pages  
2. **Build and deployment** → **Source** 选 **GitHub Actions**  
3. 保存

### 发布流程

每次把代码 `git push` 到 `main` 后，会自动：

- 执行 `npm run build:html` 打包  
- 发布到公网  

### 访问地址（部署成功后）

**https://1659290676-jpg.github.io/micheng-master/**

（首次开启 Pages 后约 1～3 分钟生效，可在仓库 **Actions** 标签查看是否绿色成功）

### 手动触发部署

仓库 → **Actions** → **Deploy GitHub Pages** → **Run workflow**

---

## 方案二：Netlify 拖拽（最快，不用命令行）

1. 本地先打包：
   ```powershell
   cd E:\CCfirst\src\web
   npm install
   npm run build:html
   ```
2. 打开 https://app.netlify.com/drop  
3. 把文件夹 **`E:\CCfirst\src\web\dist-single`** 拖进页面  
4. 会得到一个类似 `https://随机名.netlify.app` 的链接，可分享给任何人  

---

## 方案三：Vercel 连 GitHub（自动更新）

1. 打开 https://vercel.com 用 GitHub 登录  
2. **Import** 仓库 `1659290676-jpg/micheng-master`  
3. 设置：
   - **Root Directory**：`src/web`  
   - **Build Command**：`npm run build:html`  
   - **Output Directory**：`dist-single`  
4. Deploy 后获得 `https://xxx.vercel.app`  

---

## 分享给别人

把上面任意一个 **https 链接** 发到微信/QQ/论坛即可；对方用 **手机或电脑浏览器**（Chrome、Edge、Safari）打开就能玩，无需安装。

---

## 常见问题

| 问题 | 处理 |
|------|------|
| 打开是 404 | 等 Actions 跑完；确认 Pages 源为 GitHub Actions |
| 页面空白 | 换 Chrome；清除缓存后刷新 |
| 想换自己的域名 | GitHub Pages / Netlify / Vercel 都支持绑定域名 |
