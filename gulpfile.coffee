gulp = require('gulp')
gulp.task 'help', require('gulp-task-listing')

require './Config/Tools/gulp-for-scripts'
#require './Config/Tools/gulp-for-templates'
#require './Config/Tools/gulp-for-analyze-stylesheets'

gulp.task 'default', [
  'check_scripts'
]