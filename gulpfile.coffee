gulp = require('gulp')
karma = require('karma')
$ = require('gulp-load-plugins')()

gulp.task 'unit:coverage:all', (done) ->
    new karma.Server({
            configFile:  __dirname + '/karma.conf.js',
            action: 'run',
            coverageReporter: {
                includeAllSources: true,
                type : 'html',
                dir : 'coverage/',
                subdir: '.'
            }
        }, done)
        .on('error', (err) -> throw err)
        .start()

gulp.task 'coverage', ['unit:coverage:all'], ->
    gulp.src('./coverage/index.html')
        .pipe $.open()

gulp.task 'unit:coverage:tested', (done) ->
    new karma.Server({
            configFile:  __dirname + '/karma.conf.js',
            action: 'run',
            coverageReporter: {
                includeAllSources: false,
                type : 'html',
                dir : 'coverage/',
                subdir: '.'
            }
        }, done)
        .on('error', (err) -> throw err)
        .start()

gulp.task 'coverage_tested', ['unit:coverage:tested'], ->
    gulp.src('./coverage/index.html')
        .pipe $.open()
