const { createRequire } = require('module')
const requireFromFrontend = createRequire(process.cwd() + '/package.json')
const { defineConfig } = requireFromFrontend('vitest/config')

module.exports = defineConfig({
  test: {
    include: [
      '../tests/frontend/**/*.{test,spec}.{js,jsx,ts,tsx}',
      '../tests/frontend/**/*.{js,jsx,ts,tsx}',
    ],
    globals: true,
    environment: 'jsdom',
    watch: false,
  },
  // allow reading files outside ./frontend
  server: { fs: { allow: ['..'] } },
})
