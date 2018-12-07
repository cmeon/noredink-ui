NPM_PREFIX=$(realpath .)/node_modules
PATH:="${NPM_PREFIX}/.bin:${PATH}"
SHELL:=env PATH=${PATH} /bin/sh

.PHONY: test
test: node_modules
	elm-test

.PHONY: checks
checks:
	scripts/check-exposed.py

.PHONY: diff
diff: node_modules elm-stuff
	if (elm diff | tee /dev/stderr | grep -q MAJOR); then echo "MAJOR changes are not allowed!"; exit 1; fi

.PHONY: format
format: node_modules
	elm-format --validate src && elm-format --validate --elm-version=0.19 tests styleguide-app

.PHONY: clean
clean:
	rm -rf node_modules styleguide-app/elm.js styleguide-app/javascript.js $(shell find . -type d -name 'elm-stuff')

documentation.json: node_modules
	elm make --docs $@

styleguide-app/javascript.js: lib/index.js
	npx browserify --entry lib/index.js --outfile styleguide-app/javascript.js

styleguide-app/elm.js: styleguide-app/javascript.js $(shell find src styleguide-app -type f -name '*.elm')
	cd styleguide-app; elm make Main.elm --output=$(@F)

# plumbing

node_modules: package.json
	npm install
	touch -m $@

# special targets for travis, but anyone can use them, really.

.PHONY: setup
setup: node_modules

.PHONY: ci
ci: checks test format documentation.json diff styleguide-app/elm.js
