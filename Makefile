all:
	npm install --save-dev
	npm run build
	echo $(shell pwd)
	cd ./node_modules/tree-sitter-javascript/queries && \
		echo $(shell pwd) && \
		for f in *.scm; do cp -- "$$f" "../../../queries/js-$$f"; done

