const { defineConfig } = require("@vue/cli-service");
const { DefinePlugin } = require("webpack");
module.exports = defineConfig({
  transpileDependencies: true,
  configureWebpack: {
    plugins: [
      // Configura las variables de entorno
      // eslint-disable-next-line no-undef
      new DefinePlugin({
        "process.env": {
          VUE_APP_API_URL: JSON.stringify(process.env.VUE_APP_API_URL),
        },
      }),
    ],
  },
});
