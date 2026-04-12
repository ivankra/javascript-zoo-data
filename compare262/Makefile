DOCKER_ARCH ?= $(shell uname -m | sed 's/x86_64/amd64/; s/aarch64/arm64/')
DIST = ../../dist/$(DOCKER_ARCH)

all:
	../../harness/compare262.py ../test262/v8_exp.json $(DIST)/v8_full.test262 >v8_exp.txt
	../../harness/compare262.py ../test262/jsc_exp.json $(DIST)/jsc.test262 >jsc_exp.txt
	../../harness/compare262.py ../test262/kiesel.json $(DIST)/kiesel.test262.log >kiesel.txt
	for x in boa brimstone engine262 goja hermes-v1_full jint jsse libjs nova quickjs-ng_262 quickjs_262 sobek ssrlive; do \
	    ../../harness/compare262.py ../test262/$$x.json $(DIST)/$$x.test262 >$$x.txt || exit 1; \
	done
