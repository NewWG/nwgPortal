var gulp = require('gulp');
var jeet = require('jeet');
var stylus = require('gulp-stylus');
var browserSync = require('browser-sync').create();
var rupture = require('rupture');
var consolidate = require('gulp-consolidate');
var iconfont = require('gulp-iconfont');
var rename = require('gulp-rename');
var nib = require('nib');
var uglify = require('gulp-uglify');
var concat = require('gulp-concat');
var options = require('./gulp-options.json');

gulp.task('js', function() {
  return gulp.src(options.jsFiles)
    // .pipe(sourcemaps.init())
    .pipe(concat('app.min.js'))
    // .pipe(uglify())
    // .pipe(sourcemaps.write('./'))
    .pipe(gulp.dest('dist/assets/js'))
    .pipe(gulp.dest('api/dist/assets/js'))
    .pipe(browserSync.stream());
});

gulp.task('copy', function() {

    gulp.src('./src/*.html')
        .pipe(gulp.dest('./dist'))
        .pipe(gulp.dest('./api/dist'))
        .pipe(browserSync.stream());

    gulp.src('./src/views/**/*.html')
        .pipe(gulp.dest('./dist/assets/views/'))
        .pipe(gulp.dest('./api/dist/assets/views/'))
        .pipe(browserSync.stream());

    gulp.src('./src/videos/**/*.*')
        .pipe(gulp.dest('./dist/assets/videos/'))
        .pipe(gulp.dest('./api/dist/assets/videos/'))
        .pipe(browserSync.stream());

    gulp.src('./src/img/**/*.*')
        .pipe(gulp.dest('./dist/assets/img/'))
        .pipe(gulp.dest('./api/dist/assets/img/'))
        .pipe(browserSync.stream());
    
    gulp.src('./src/fonts/**/*.*')
        .pipe(gulp.dest('./dist/assets/fonts/'))
        .pipe(gulp.dest('./api/dist/assets/fonts/'))
        .pipe(browserSync.stream());
});

gulp.task('css', function() {
    gulp.src('./src/css/styles.styl')
        // .pipe(sourcemaps.init())
        .pipe(stylus({
            use: [jeet(), rupture(), nib()],
            compress: false,
            'include css': true
        }))
        // .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest('dist/assets/css'))
        .pipe(gulp.dest('api/dist/assets/css'))
        .pipe(browserSync.stream());
});

gulp.task('browsersync', function() {
    browserSync.init({
        port: 4000,
        server: {
            baseDir: './api/dist'
        }
    });
});

gulp.task('iconfont', function(){
    return gulp.src(['src/img/icons/*.svg'])
        .pipe(iconfont({ fontName: 'icons' }))
        .on('glyphs', function(glyphs, options) {
            gulp.src('./src/css/template.styl')
                .pipe(consolidate('lodash', {
                    glyphs: glyphs,
                    fontName: 'icons',
                    className: 'i'
                }))
                .pipe(rename({ basename: 'icons' }))
                .pipe(gulp.dest('src/css/common/'));
        })
        .pipe(gulp.dest('dist/assets/fonts/'));
});

gulp.task('watch', function() {
    gulp.watch(['src/css/**/*.styl'], ['css']);
    gulp.watch(['src/js/**/*.js'], ['js']);
    gulp.watch(['src/img/**/*.*'], ['copy']);
    gulp.watch(['src/*.html'], ['copy']);
    gulp.watch(['src/views/**/*.html'], ['copy']);
});

gulp.task('default', [
    'css',
    'js',
    'copy',
    'browsersync',
    'watch'
]);
