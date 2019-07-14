#!/bin/dash

legit-branch
legit-branch testa
legit-branch master
legit-branch -d master
legit-branch -d testa
legit-init
legit-branch
legit-branch testa
legit-branch master
legit-branch -d master
legit-branch -d testa
touch a
legit-add a
legit-commit -m testa
legit-branch
legit-branch testa
legit-branch master
legit-branch
legit-branch testa
legit-branch test2
legit-branch -d master
legit-branch
legit-branch @@@@
legit-branch a@b@c
legit-branch 12345
legit-branch -d testa
legit-branch
