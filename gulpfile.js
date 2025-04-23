var gulp = require('gulp');
var sass = require('gulp-sass');
var browserSync = require('browser-sync').create();

// Compilation du SCSS vers dist/css
gulp.task('sass', function() {
  return gulp.src('src/scss/*.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('src/css'))
    .pipe(browserSync.stream());
});

// Serveur de dev + HMR
gulp.task('serve', ['sass'], function() {
  browserSync.init({
    server: { baseDir: ['src'] },
    port: 3000
  });

  gulp.watch('src/scss/**/*.scss', ['sass']);
  gulp.watch('src/*.html').on('change', browserSync.reload);
  gulp.watch('src/js/*.js').on('change', browserSync.reload);
});

gulp.task('default', ['serve']);