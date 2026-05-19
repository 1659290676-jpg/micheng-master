import { defineConfig } from 'vite';
import path from 'path';

const repoRoot = path.resolve(__dirname, '../..');

export default defineConfig({
  root: '.',
  publicDir: path.resolve(repoRoot, 'assets'),
  resolve: {
    alias: { '@data': path.resolve(repoRoot, 'data') },
  },
  server: {
    port: 5173,
    open: true,
    fs: { allow: [repoRoot] },
  },
  build: {
    outDir: 'dist',
    emptyOutDir: true,
  },
});
