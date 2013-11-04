module.exports = (grunt) ->

  grunt.initConfig

    coffee:
      compile:
        files:
          'dist/ramsey.js': 'src/ramsey.coffee'

    uglify:
      dist:
        files:
          'dist/ramsey.min.js': 'dist/ramsey.js'


  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'


  grunt.registerTask 'default', ['coffee','uglify']