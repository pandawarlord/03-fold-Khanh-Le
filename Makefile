test:
	stack test

bin:
	stack build

clean: 
	stack clean

distclean: clean 
	rm -rf .stack-work 

watch:
	stack build --file-watch

tags:
	hasktags -x -c lib/

turnin:
	git commit -a -m "turnin"
	git push origin master

upstream:
	git remote add upstream https://github.com/cse130-assignments/03-fold.git

update:
	git pull upstream master

ghci:
	stack ghci

.PHONY: test bin clean distclean watch tags turnin upstream update ghci