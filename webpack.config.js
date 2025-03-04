const webpack = require("webpack");

module.exports = {
  entry: "./app/javascript/application.js",
  output: {
    filename: "bundle.js",
    path: __dirname + "/app/assets/builds",
  },
  plugins: [
    new webpack.ProvidePlugin({
      $: "jquery",
      jQuery: "jquery",
      Popper: ["popper.js", "default"],
    }),
  ],
};
  