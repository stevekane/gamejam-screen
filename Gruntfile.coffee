module.exports = (grunt) ->
  
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    minispade:
      options:
        renameRequire: true
        useStrict: false
        prefixToRemove: 'screen/js/'
      files:
        src: ['screen/js/**/*.js']
        dest: 'screen.js'
        
    regarde:
      js:
        files: 'screen/js/**/*.js'
        tasks: ['minispade', 'livereload', 'regarde']

  grunt.loadNpmTasks('grunt-contrib-livereload')
  grunt.loadNpmTasks('grunt-minispade')
  grunt.loadNpmTasks('grunt-regarde')

  grunt.registerTask('default', [ 'livereload-start',
                                  'minispade',
                                  'regarde'])
