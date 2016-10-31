/**
 * Tasks for files management.
 **/
const config = require('./config');
const gulp = require('gulp');

gulp.task('copy:fonts', () =>
    gulp
        .src([config.bootstrap.fonts])
        .pipe(gulp.dest(config.public.fonts))
);
    
gulp.task('copy', ['copy:fonts'], (cb) => cb());

