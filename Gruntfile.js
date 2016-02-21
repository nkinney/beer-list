module.exports = function (grunt) {
  require('load-grunt-tasks')(grunt);

  grunt.initConfig({
    express: {
      options: { },
      web: {
        options: {
          script: 'lib/api/app.js',
        }
      },
    },
    watch: {
      ui: {
        options: {
          livereload: true
        },
        files: [
          'lib/ui/**/*.js'
        ]
      },
      api: {
        files: [
          'lib/api/**/*.js'
        ],
        tasks: [
          'express:web'
        ],
        options: {
          nospawn: true,
          atBegin: true,
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
    browserify: {
      dist: {
        src: ['lib/ui/scripts/application.js'],
        dest: 'static/beer-list.js'
      }
    },
    handlebars: {
      all: {
        files: {
          "static/templates.js": ["lib/ui/templates/**/*.hbs"]
        }
      }
    }
  });
  grunt.registerTask('dist', 'launch webserver and watch tasks', [
    'browserify:dist',
  ]);
  grunt.registerTask('web', 'launch webserver and watch tasks', [
    'parallel:web',
  ]);
  
  grunt.registerTask('default', ['web']);
};