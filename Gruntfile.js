module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    sass: {
      dist: {
        files: {
          'css/app.css' : 'css/app.sass'
        }
      }
    },
    browserSync: {
      dev: {
        bsFiles: {
          src : [
            'css/*.css',
            '*.html'
          ]
        },
        options: {
          server: {
            baseDir: "./",
            watchTask: true
          }
        }
      }
    },
    watch: {
      css: {
        files: '**/*.scss',
        tasks: ['sass']
      }
    }
  });
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-browser-sync');
  grunt.registerTask('default',["browserSync","watch"]);
}