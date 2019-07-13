#!/bin/dash

rm -rf .legit
touch a b
touch a@b@c
legit-add a 		#error cause there's no repository
legit-commit #No init error
legit-init 		#repository initialized
legit-commit #invalid options
legit-commit -m hello #nothing to commit
legit-add f		#error cause file does not exist
legit-add a
legit-add a@b@c	#invalid filename	
legit-commit -m "This is my first commit"
rm a
legit-add a		#Add the fact that a has been removed
legit-commit -m "Bye bye a" # should result in removal of a from the repository
legit-add b
legit-commit -m "Hello b"
echo hello>>b
legit-add b
legit-commit -m "Updated b"
legit-commit -m "message" #nothing to commit
