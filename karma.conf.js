// Karma configuration
// Generated on Tue Nov 24 2015 16:49:55 GMT+0000 (GMT)

module.exports = function(config) {
  config.set({
    basePath: '',
    frameworks: ['jasmine', 'requirejs'],

    files: [
        "Scripts/3rdParty/jQuery/jquery-1.11.3.min.js",
        {pattern: 'Scripts/App/**/*.js', included: false},
        {pattern: 'Scripts/Test/**/*Spec.js', included: false},
        "Scripts/Test/AppSpecs.js"
    ],
    
    reporters: ['progress', 'coverage'],

    preprocessors: {
        'Scripts/App/**/*.js': ['coverage']
    },

    port: 9876,
    colors: true,
    logLevel: config.LOG_INFO,
    autoWatch: false,
    browsers: ['PhantomJS'],
    singleRun: true,
    concurrency: Infinity
  })
}