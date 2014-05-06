module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON "package.json"

    meta:
      file: 'Halda'
      endpoint: 'package',
      banner: '/* <%= pkg.name %> v<%= pkg.version %> - <%= grunt.template.today("yyyy/m/d") %>\n' +
              ' <%= pkg.homepage %>\n' +
              ' Copyright (c) <%= grunt.template.today("yyyy") %> <%= pkg.author.name %>' +
              ' - Licensed under <%= pkg.license %> */\n'

    resources:
      src: [
        'src/*.coffee'
      ]
      spec: [
        'spec/**/*_spec.coffee'
      ]

    browserify:
      debug:
        files:
          'dist/<%= meta.file %>-debug.js': ['index.js']
        options:
          debug: true
          standalone: 'Halda'
      full:
        files:
          'dist/<%= meta.file %>-full.js': ['index.js']
        options:
          debug: false
          standalone: 'Halda'
      dist:
        files:
          'dist/<%= meta.file %>.js': ['index.js']
        options:
          standalone: 'Halda'
          external: [require.resolve('jquery'), require.resolve('underscore')]

    coffee:
      node:
        src: ['**/*.coffee']
        cwd: 'src'
        dest: 'lib/'
        expand: true
        ext: '.js'
        options:
          bare: true
      test:
        files:
          'test/spec/spec.js': ['<%= resources.spec %>']
        options:
          join: true

    uglify:
      options:
        compress: false
        banner: '<%= meta.banner %>'
      endpoint:
        files: 'dist/<%=meta.file%>.min.js': 'dist/<%= meta.file %>.js'

    watch:
      src:
        files: '<%= resources.src %>'
        tasks: ['coffee:src', 'uglify']

    mocha:
      test:
        src: [ 'test/test.html' ],
        options:
          # Select a Mocha reporter
          # http://visionmedia.github.com/mocha/#reporters
          reporter: 'Spec',

          # Indicates whether 'mocha.run()' should be executed in
          # 'bridge.js'. If you include `mocha.run()` in your html spec,
          # check if environment is PhantomJS. See example/test/test2.html
          run: true,

          # Override the timeout of the test (default is 5000)
          timeout: 10000

    stylus:
      compile:
        options:
          compress: true
        files:
          'dist/Halda.css': ['src/css/*.styl']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-browserify'
  grunt.loadNpmTasks 'grunt-mocha'
  grunt.loadNpmTasks 'grunt-contrib-stylus'

  grunt.registerTask 'browser', ['coffee:node', 'browserify:debug', 'browserify:full', 'browserify:dist']
  grunt.registerTask 'dist', ['browser', 'uglify']
  grunt.registerTask 'spec', ['browser', 'coffee:test', 'mocha:test']
  grunt.registerTask 'default', ['spec']
