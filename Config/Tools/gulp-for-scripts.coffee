gulp = require('gulp')
karma = require('karma')
$ = require('gulp-load-plugins')()

gulp.task 'unit:coverage', (done) ->

    new karma.Server({
            configFile:  __dirname + '/../../karma.conf.js',
            action: 'run',
            singleRun: true,
            preprocessors: {
                'Scripts/App/**/*.js': ['coverage']
            },
            reporters: ['progress', 'coverage'],
            coverageReporter: {
                includeAllSources: true
                type : 'html',
                dir : 'coverage/',
                subdir: '.'
            }
        }, done)
        .on('error', (err) -> throw err)
        .start()

gulp.task 'coverage', ['unit:coverage'], ->
    gulp.src('./coverage/index.html')
        .pipe $.open()
