#!/bin/dash

legit-checkout
legit-init
legit-checkout
touch a
legit-checkout
legit-add a
legit-checkout
legit-commit -m testing
legit-checkout
legit-branch
legit-checkout master
legit-checkout notmaster
legit-branch notmaster
legit-checkout notmaster
touch b
legit-add b
legit-commit -m bbbb
echo bbbb>>b
legit-add b
legit-checkout master
legit-commit -m hellothere
legit-checkout master
legit-status
touch p
legit-add p
legit-checkout notmaster
legit-status
legit-commit -m padded
legit-log
legit-checkout master
legit-log

