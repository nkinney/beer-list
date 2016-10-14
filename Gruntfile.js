module.exports = function (grunt) {
  require('load-grunt-tasks')(grunt);

  grunt.initConfig({
    browserify: {
      dist: {
        src: ['ui/scripts/application.js'],
        dest: 'public/beer-list.js'
      },
      options: {
          transform: ['hbsfy']
      }
    },
    copy: {
      main: {
        src: 'ui/index.html',
        dest: 'public/index.html'
      },
    },
    express: {
      options: { },
      web: {
        options: {
          script: 'api-express/app.js',
        }
      },
    },
    handlebars: {
      all: {
        files: {
          "public/templates.js": ["ui/templates/**/*.hbs"]
        }
      }
    },
    parallel: {
      web: {
        options: {
          stream: true
        },
        tasks: [{
          grunt: true,
          args: ['watch:ui']
        }, {
          grunt: true,
          args: ['watch:api']
        }]
      },
    },
    watch: {
      ui: {
        options: {
          livereload: true
        },
        files: [
          'ui/**/*.js',
          'ui/templates/**/*.hbs'
        ],
        tasks: [
          'browserify:dist','express:web'
        ],
      },
      api: {
        files: [
          'api-express/**/*.js'
        ],
        tasks: [
          'browserify:dist','express:web'
        ],
        options: {
          nospawn: true,
          atBegin: true,
        }
      }
    },
  });
  grunt.registerTask('dist', 'launch webserver and watch tasks', [
    'browserify:dist',
    'handlebars:all'
  ]);
  grunt.registerTask('web', 'launch webserver and watch tasks', [
    'parallel:web'
  ]);
  grunt.registerTask('serve', 'launch webserver and watch tasks', [
    'express:web'
  ]);
  
  grunt.registerTask('default', ['copy:main','dist','web']);
};