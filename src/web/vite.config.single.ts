import { defineConfig } from 'vite';
import path from 'path';
import { viteSingleFile } from 'vite-plugin-singlefile';

/** 打包为单个 HTML，可双击或用浏览器直接打开 */
export default defineConfig({
  root: '.',
  publicDir: path.resolve(__dirname, '../../assets'),
  resolve: {
    alias: { '@data': path.resolve(__dirname, '../../data') },
  },
  plugins: [viteSingleFile()],
  build: {
    outDir: 'dist-single',
    emptyOutDir: true,
    assetsInlineLimit: 100000000,
  },
});
