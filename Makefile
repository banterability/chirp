STYLUS=./node_modules/.bin/stylus

usage:
	@echo ''
	@echo 'Task        : Description'
	@echo '----------- : -----------'
	@echo 'make styles : Compile CSS from Stylus'
	@echo ''

.PHONY: styles

styles:
	$(STYLUS) -o public/ client/app.styl
