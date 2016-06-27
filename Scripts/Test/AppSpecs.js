
var tests = [];
for (var file in window.__karma__.files) {
    if (/Spec\.js$/.test(file)) {
        tests.push(file);
    }
}

require(['/base/Scripts/App/Calc.js']);

requirejs.config({
    // Karma serves files from '/base'
    basePath: 'base',

    paths: {
    },

    shim: {
    },

    // ask Require.js to load these files (all our tests)
    deps: tests,

    // start test run, once Require.js is done
    callback: window.__karma__.start
});


// require(['jasmine-boot'], function () {
//   require(['specs'], function(){
//     window.onload(); //trigger Jasmine
//   })
// });