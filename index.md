#git, the next level

##About Us
Brad Erickson (eosrei) & Mark Ferree (mrf)

##More than SVN
Many users rarely use git as anything more than a distributed SVN.

Let's learn more about one of the tools you use every day.

#Prerequisites
Working knowledge of git from the command line

. . .

You must know the following commands and their use:

* commit
* push
* pull
* clone

#Updating your fork

Never make commits on existing branches
```bash
git remote
git remote add upstream git@github.com:user/project.git
git remote update --prune
git checkout master
git pull upstream master
git push # aka git push origin master
```
Now make your new feature branch or rebase your existing branches

#Useful commit messages
* Short explanation of what, but primarily why.
* https://wiki.gnome.org/Git/CommitMessages
* https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message

#Summary


#Further Study
* History rewriting for removing passwords and extraneous binary files.
* Repository hooks and scripts.
* Pull Requests are coming to Drupal.org: https://www.youtube.com/watch?v=37zyV2mqDjU
