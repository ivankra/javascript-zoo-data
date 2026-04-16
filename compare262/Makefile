DOCKER_ARCH ?= $(shell uname -m | sed 's/x86_64/amd64/; s/aarch64/arm64/')
DIST = ../../dist/$(DOCKER_ARCH)

all:
	../../harness/compare262.py ../test262/v8_exp.json $(DIST)/v8_full.ci-test262 >v8.txt
	../../harness/compare262.py ../test262/jsc_exp.json $(DIST)/jsc.ci-test262 >jsc.txt
	../../harness/compare262.py ../test262/spidermonkey_exp.json $(DIST)/spidermonkey_full.ci-test262 >spidermonkey.txt
	../../harness/compare262.py ../test262/quickjs_262.json $(DIST)/quickjs_262.ci-test262 >quickjs.txt
	../../harness/compare262.py ../test262/quickjs-ng_262.json $(DIST)/quickjs-ng_262.ci-test262 >quickjs-ng.txt
	../../harness/compare262.py ../test262/hermes_full.json $(DIST)/hermes_full.ci-test262 >hermes.txt
	for x in boa brimstone engine262 goja jint jsse kiesel libjs nova okojo sobek ssrlive; do \
	  ../../harness/compare262.py ../test262/$$x.json $(DIST)/$$x.ci-test262 >$$x.txt || exit 1; \
	done
