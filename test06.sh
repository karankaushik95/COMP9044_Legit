#!/bin/dash

legit-status #error no legit repo
legit-init
legit-status #error no commits yet
touch a b c d e
legit-add a
legit-status #error no commits yet
legit-commit -m status
legit-status #a same as repo, everything else untracked
echo abc>a
legit-status #changes made not staged for commit
legit-add a b
legit-status #changes staged for commit -a , added to index -b
echo pqrf>a
legit-status #changes made, different changes staged for commit, added to index
legit-commit -m testq
legit-status #changes not staged for commit, same as repo
legit-rm --forced --cached b
legit-status #b deleted
rm a
legit-status #file deleted a, deleted b

