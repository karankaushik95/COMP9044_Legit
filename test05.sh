#!/bin/dash

touch a
legit-rm #no init
legit-rm a #no init
legit-rm --cached a #no init
legit-rm --forced a #no init
legit-rm --forced --cached a #no init
legit-init
legit-add a
legit-commit -m message
legit-rm a #removed from directory and index
echo test>a
legit-add a
legit-commit -m testing
echo test2>>a
legit-rm a #fails because file in repo being different to directory
legit-rm --cached a
legit-add a
echo testabcd>>a
legit-rm a #fails because different in directory and index
legit-rm --forced a #removes both in index and directory
echo test>a
legit-add a
legit-rm a	#fails because there are changes in the index
legit-rm --forced --cached a #removes in the index
legit-rm a
