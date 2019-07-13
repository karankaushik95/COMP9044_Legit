#!/bin/dash

legit-branch
legit-branch test
legit-branch master
legit-branch -d master
legit-branch -d test
legit-init
legit-branch
legit-branch test
legit-branch master
legit-branch -d master
legit-branch -d test
touch a
legit-add a
legit-commit -m test
legit-branch
legit-branch test
legit-branch master
legit-branch
legit-branch test
legit-branch test2
legit-branch -d master
legit-branch
legit-branch @@@@
legit-branch a@b@c
legit-branch 12345
legit-branch -d test
legit-branch
