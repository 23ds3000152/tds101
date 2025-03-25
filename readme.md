Before cloning I have created a seperate folder for containing all content relating to this repo.

```sh
mkdir 23DS3000152
cd /d/23DS30001525
```
## Git Hidden Folders:

Github repositories have a hidden folder `.git` indicating that the current directory is git repository and it can we viewed using the following cmd.

```sh
git ls -la
```
For creating a repository in a new project I'll create a new folder and initialize it using `git init`.

```
mkdir /23DS3000152/workspace/tmp/new-project
cd /23DS3000152/workspace/tmp/new-project
git init
touch README.md
open README.md
git status #to get status of the main branch#
git add . #To add push changes to the repo#
#make changes to README.md
git commit -a -m "add readme file"
```

## Cloning

Cloning can be done in three ways:
-   HTTPS
-   SSH
-   Github CLI

### HTTPS: 

```sh
git clone https://github.com/23ds3000152/tds101.git
```
### SSH:


## Comit Changes

We can commit changes using `git commit` command, which will open an editor (of you choice) requesting a commit message for admins reference. 

```sh
git commit
```
setting up default editor for git

```sh
git config --global core.editor vscode
```
> commiting changes with a message directly from the terminal

```sh
git commit -m "Update README file"
```

##Branches

##Remotes

##Stashing

##Merging


## Add

Git allows us to stage all changes made in a repo for commit, it can be done using `git add .` command

```sh
git add.
```


## Reset

Reset allows to move staged changes to unstaged/untracked. This is useful when you to revert files to be not committed.

```sh
git add .
git reset
```
> Reset will revert changes made by `git add.`


## Log:

Checking history of recent commits to the github tree

```sh
git log
```

## Push:

Pushing Changes to the github account

```sh
git push new-project
```
## Reset:

For reverting a file status from being staged to untracked `git reset` command can be used, it is a useful command in git toolkit for managing the staging area.

```sh
$ echo "Hello world" >> Hello.md
$ git add Hello.md
$ git revert Hello.md
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        Hello.md

nothing added to commit but untracked files present (use "git add" to track)
```
## Origin:

Origin is a reference to the main branch of which a copy is made at local machines while cloning, details of which are contained in `.git` file. 

- `git config remote origin` configures the origin address
```sh
git config remote origin <git url>
```
