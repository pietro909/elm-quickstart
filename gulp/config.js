/**
 * Folders' definitions
 **/ 
const sourceRoot = './src/';
const publicRoot = './public/dist/'
const bootstrapRoot = './node_modules/bootstrap/';

module.exports = {
    source: {
        sass: sourceRoot + 'styles/**/*.scss',
        elm: sourceRoot + 'elm/**/*.elm',
        js: sourceRoot + '**/*.js'
    },
    public: {
        root: publicRoot,
        sass: publicRoot + 'css/',
        js: publicRoot + 'js',
        fonts: publicRoot + 'fonts'
    },
    bootstrap: {
        fonts: bootstrapRoot + 'fonts/*'
    },
    output: {
        elmApplicationName: 'app'
    }
};
