#!/bin/dash

rm -rf .legit
legit-show #no init
legit-init
touch a b
legit-add a
legit-commit -m a
legit-show 0:a  #shows empty file
echo abcd>a
legit-add a b
legit-show :a	#changed 'a' file is shown
legit-commit -m anb
legit-log	#log with two commits sorted in descending order
legit-show 1:a #updated a is shown
legit-show 0:a	#empty file
legit-show 2:a	#invalid commit
legit-show 0:b	#invalid file in commit
legit-show :c	#invalid file in index
legit-show abcd	#invalid options
legit-show	#usage error
legit-show 0:a alskdalkd	#usage error
legit-show a:a			#usage error
