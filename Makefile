SHELL = /bin/bash

test262.md:
	(cd test262; echo "# Test262 rankings"; \
	for key in all ex-staging ex-staging-intl ex-staging-intl-annexb ex-staging-intl-annexb-esnext features:Temporal; do \
	   echo "## $$key"; \
	   grep "\"$$key\":.*pass_percent" *.json | sed -E 's/([^:]+).json:.* ([0-9.]+)[}],/\2 \1/' | sort -gr | grep -v '^0\.0 ' | sed 's/^/* /'; \
	   echo; \
	 done) >test262.md

.PHONY: test262.md
