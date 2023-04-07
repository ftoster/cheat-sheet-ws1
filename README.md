This document lists some of the common commands used for `Git`.

# Cheat Sheet

## Commands

### Clone

#### Https

```sh
git clone https://github.com/ashwanikumar04/git-cheatsheet.git
```

#### SSH

```sh
git clone git@github.com:ashwanikumar04/git-cheatsheet.git

```
#### Single branch
Sometimes when the repository is very large, we only want to clone a single branch. Use below command to clone a single branch
```sh
git clone git@github.com:ashwanikumar04/git-cheatsheet.git -b master --single-branch

```

### Config

The following command makes the output of git commands colorful.
```sh
git config --global color.ui true
```

#### Local

```sh
git config user.name "Ashwani Kumar"
git config user.email "ashwanikumar@test.com"
```

#### Global


```sh
git config --global user.name "Ashwani Kumar"
git config --global user.email "ashwanikumar@test.com"
```

### Status

`git status` Shows the status with tracked and un-tracked files

### Add

```git add .``` Adds all the files in the current directory to staging.

```git add -A``` Adds all files in the current repository (even new files that are not yet tracked)

```git add -u```  Add all files that are already being tracked (ignore new files)

### Commit

`git commit -m "Add file to repository"` Commit staged files to the repository

`git commit --amend -m "New Message"` Changes the commit message for the last commit

`git commit -am "New Message"` Lets us add and commit all tracked, modified files in one step.

### Checkout

`git checkout -b <name_of_branch>` Create a branch and check it out in one step

`git branch <name_of_branch>` Create a branch, but stay in the current branch.

`git checkout <name_of_branch>` Check out an already created branch

`git branch` See a list of all branches, highlights the currently checked out branch

`git checkout master` Checkout master branch

`git branch -d <name_of_branch>` Remove branch locally, but only if we have merged branch.

`git branch -D <name_of_branch>` Remove branch even if we haven't merged changes.

### Stash

`git stash` Use this to stash all the changes to the current repository

`git stash apply` Use this to apply the last stash

### Push

`git push --set-upstream origin <branch>`
`git push`

### Pull

`git pull origin/master`
