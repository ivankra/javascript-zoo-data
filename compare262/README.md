# test262 diffs: ours vs native CI runs

* boa: OK
  * `test/built-ins/Atomics/`: https://github.com/boa-dev/boa/issues/5308
  * `test/staging/sm/strict/`: https://github.com/tc39/test262/pull/5008
  * floating-point diffs amd64 vs arm64: bug in float16 rounding on amd64
* engine262: https://github.com/engine262/engine262/issues/340
* brimstone: likely timeouts and bugs in their test262 runner
* goja: OK
* hermes:
  * async tests: https://github.com/facebook/hermes/issues/1982
  * sloppy vs strict failures: **TODO**
* jint: **TODO**; repl crashes and diffs to be reported, maybe more bugs in their test262 runner
* jsse: https://github.com/pmatos/jsse/issues/58
* jsc:
  * `test/built-ins/Temporal/`: diffs due to test262 revision, broken tests in the old revision
  * `test/built-ins/Promise/resolve/arg-uniq-ctor.js: PASS vs TypeError: |this|.constructor is not an Object or undefined`: **TODO**
  * `test/language/module-code/top-level-await/fulfillment-order.js: NoAsyncTestComplete vs PASS`: **TODO**
  * `test/language/module-code/top-level-await/rejection-order.js: NoAsyncTestComplete vs PASS`: **TODO**
* kiesel: OK, all diffs are bugs in the old test262-harness causing it to fail some tests
* libjs: OK
  * `test/staging/sm/regress/regress-610026.js`: timeout/crash?
* nova: **TODO**; likely bugs in their test262 runner
  * `test/staging/sm/`: https://github.com/tc39/test262/pull/5020
* quickjs: OK
  * `test/built-ins/Atomics/`: https://github.com/bellard/quickjs/issues/501
* quickjs-ng: OK
* sobek: OK
* ssrlive: `$262` prelude missing; **TODO**
* v8: OK
  * `test/staging/sm/`: https://github.com/tc39/test262/pull/5020
