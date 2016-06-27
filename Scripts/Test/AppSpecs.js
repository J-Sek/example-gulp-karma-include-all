var tests = [];
for (var file in window.__karma__.files) {
    if (/Spec\.js$/.test(file)) {
        tests.push(file);
    }
}

require(['/base/Scripts/App/Calc.js']);

requirejs.config({
    deps: tests,
    callback: window.__karma__.start
});