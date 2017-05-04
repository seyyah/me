- javascript / optimization: Prepack is a partial evaluator for JavaScript. Prepack rewrites a JavaScript bundle, 
resulting in JavaScript code that executes more efficiently. https://prepack.io https://github.com/facebook/prepack

```javascript
// OPTIMIZATED: https://prepack.io/repl.html
(function () {
  var _$0 = Date.now();

  if (typeof _$0 !== "number") {
    throw new Error("Prepack model invariant violation: " + _$0);
  }

  result = _$0 * 2 > 42 ? 55 : _$0;
})();

// old - org
(function() {
  function fib(x) {
    return x <= 1 ? x : fib(x - 1) + fib(x - 2);
  }

  let x = Date.now();
  if (x * 2 > 42) x = fib(10);
  global.result = x;
})();
```
