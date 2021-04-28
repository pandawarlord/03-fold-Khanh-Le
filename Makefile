
#####################################################################################################
STACK=stack --allow-different-user
BUILD_OPTS=
#####################################################################################################

test: clean
	$(STACK) test $(BUILD_OPTS)

bin:
	$(STACK) build $(BUILD_OPTS)

clean: 
	$(STACK) clean

distclean: clean 
	rm -rf .stack-work 

tags:
	hasktags -x -c src/

turnin:
	git commit -a -m "turnin"
	git push origin master

upstream:
	git remote add upstream https://github.com/cse130-assignments/03-fold.git --allow-unrelated-histories
  
update:
	git pull upstream master

ghci:
	$(STACK) ghci
