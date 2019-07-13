#!/bin/dash

rm -rf .legit
legit-log #no init
legit-show #no init
legit-init
legit-log #no commits
touch a b
legit-add a
legit-commit -m a
legit-log	#log with one commit
legit-log alkdjalksdj #usage error 
echo abcd>a
legit-add a b
legit-commit -m anb
legit-log	#log with two commits sorted in descending order

