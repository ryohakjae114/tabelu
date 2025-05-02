import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import FullReload from 'vite-plugin-full-reload'

export default defineConfig({
  plugins: [
    RubyPlugin(),
    FullReload(['config/routes.rb', 'app/views/**/*'], { delay: 100 })
  ],
  // 以下のserverオプションは開発時のみに適用されます
  // https://ja.vite.dev/config/server-options
  server: {
    hmr: {
      // vite.config.mts > development の hostに合わせる
      host: 'vite.test',
      clientPort: 443
    }
  }
})
