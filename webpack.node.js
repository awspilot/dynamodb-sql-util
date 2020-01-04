const webpack = require('webpack');
const path = require('path');
//const UglifyJsPlugin = require('uglifyjs-webpack-plugin'); // no support for ES6+
const TerserPlugin = require('terser-webpack-plugin'); // support for ES6+ (succesor of uglify-es)



const browserConfig = {
	node: true,
	mode: 'production',
	target: 'node',
	node: {
		fs: "empty",
	},
	// devtool:
	context: path.resolve(__dirname, 'src'),
	optimization: {
		minimize: true,
		minimizer: [
			new TerserPlugin({
				cache: false,
				//test: /\.js(\?.*)?$/i,
				test: /\.min\.js$/
			}),
		],
	},
	plugins: [
	],
	entry: {
		'sqlparser.node': path.resolve(__dirname, './src/index.js'),
		'sqlparser.node.min': path.resolve(__dirname, './src/index.js')
	},
	output: {
		path: path.resolve(__dirname, 'dist'),
		filename: '[name].js',
		library: 'sqlparser',


		libraryTarget: 'commonjs2',
		libraryExport: 'default',
	},

	externals: {
	},
	module: {
		rules: [
			{
				test: /\.js$/,
				exclude: /node_modules/,
				use: [
					{
						loader: "ifdef-loader",
						options: {
							BROWSER: false,
						}
					},
					{loader: 'babel-loader'},
				]
			}
		]
	}
}

module.exports = [ browserConfig ];
