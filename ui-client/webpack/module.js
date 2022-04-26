'use strict';

const MiniCssExtractPlugin = require("mini-css-extract-plugin");

module.exports = {
    rules: [
        {
            test: /\.ts$/,
            loader: 'ts-loader'
        },
        {
            enforce: 'pre',
            test: /\.ts$/,
            loader: 'tslint-loader'
        },
        {
            test: /\.s[ac]ss$/,
            use: [
                // Creates `style` nodes from JS strings
                //"style-loader",
                MiniCssExtractPlugin.loader, // extract css into files
                // Translates CSS into CommonJS
                "css-loader",
                // Compiles Sass to CSS
                "sass-loader",
            ],
        }
    ]
};
