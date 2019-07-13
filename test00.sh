#!/bin/dash

rm -rf .legit
legit-init
legit-init 			#test if it doesn't initialize twice
legit-init abcd			#give it a random argument to see if it works
touch a
legit-add a 
legit-add a			#should do nothing but not give an error
legit-add			#error because filenames aren't given
legit-add -p			#error because incorrect or unsupported flag provided
echo abc>>a
legit-add a			#replace a in the index because file has been changed
legit-commit -m commit1		#commit 0 done
