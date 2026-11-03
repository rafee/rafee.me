import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import { remarkMermaid } from './src/utils/remarkMermaid.mjs';

export default defineConfig({
  site: 'https://rafee.me',
  integrations: [mdx(), sitemap()],
  markdown: {
    remarkPlugins: [remarkMermaid],
    shikiConfig: {
      themes: {
        light: 'github-light',
        dark: 'github-dark',
      },
      wrap: true,
    },
  },
});
