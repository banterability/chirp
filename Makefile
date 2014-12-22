COFFEE=./node_modules/.bin/coffee
STYLUS=./node_modules/.bin/stylus

usage:
	@echo ''
	@echo 'Task         : Description'
	@echo '------------ : -----------'
	@echo 'make scripts : Compile JS from Coffeescript'
	@echo 'make styles  : Compile CSS from Stylus'
	@echo ''

.PHONY: scripts styles

scripts:
	$(COFFEE) -bco public/ client/app.coffee

styles:
	$(STYLUS) -o public/ client/app.styl
