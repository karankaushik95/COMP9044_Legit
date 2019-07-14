#!/bin/dash

legit-merge
legit-init
legit-merge
touch a
legit-merge
legit-add a
legit-merge
legit-commit -m added
legit-status
legit-merge
legit-merge master
legit-branch data
legit-merge data -m message
legit-checkout data
legit-merge 0 -m message
touch b
legit-add b
legit-commit -m hello
legit-merge master -m message
echo bcd>>a
legit-commit -m conflict
legit-checkout master
echo afg>>a
legit-commit -m conflicting
legit-merge master
legit-merge data
legit-merge commit -m
legit-merge commit -m failmessage
legit-merge 9
legit-merge 0
legit-merge 1
legit-merge data
