module.exports = {
  context: __dirname + '/app',
  entry: './main',
  output: {
    filename: 'bundle.js',
    path: __dirname + '/dist',
    publicPath: __dirname + '/public'
  }
}
