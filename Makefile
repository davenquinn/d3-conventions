all: lib/index.js

lib/index.js: src/index.coffee
	coffee -o lib $^
