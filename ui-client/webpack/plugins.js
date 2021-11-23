'use strict';

var webpack = require('webpack');
var CopyWebpackPlugin = require('copy-webpack-plugin');
var HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin')

var ENV = process.env.npm_lifecycle_event;
var isProd = ENV === 'build';

module.exports = [
    new webpack.ProgressPlugin(),

    new HtmlWebpackPlugin({
        template: 'public/index.html',
        chunksSortMode: 'auto'
    }),

    new MiniCssExtractPlugin({
        filename: '[name].css',
        chunkFilename: '[id].css'
    })
];
