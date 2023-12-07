const gulp = require('gulp');
const sass = require('gulp-sass')(require('sass'));
const livereload = require('gulp-livereload');

// Tarefa para compilar SCSS para CSS
function compileSass() {
    return gulp.src('scss/**/*.scss')
        .pipe(sass().on('error', sass.logError))
        .pipe(gulp.dest('./css'))
        .pipe(livereload());
}

// Tarefa para observar mudanças nos arquivos SCSS
function watch() {
    livereload.listen();
    gulp.watch('scss/**/*.scss', compileSass);
}

// Exporta as tarefas para uso externo
exports.compileSass = compileSass;
exports.watch = watch;

// Tarefa padrão que inicia a tarefa de observação
exports.default = watch;
