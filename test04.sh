#!/bin/dash

rm -rf .legit 
legit-commit -a #no legit repo
legit-commit -a -m #no legit repo
legit-commit -a -m #no legit repo
legit-init
legit-init	#error for good measure
touch a b
legit-commit -a -m #usage error
legit-commit -a #usage error
legit-commit -a a #usage error
legit-commit -a -m message	#nothing to commit
legit-add a
legit-commit -m message	#committed as commit 0
legit-commit -a -m test	#nothing to commit
echo abc>a
legit-add a
echo pqr>>a
legit-commit -a -m commit2
legit-show 1:a #will show abc\npqr
