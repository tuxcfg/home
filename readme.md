User home directory files
=========================


## Installation ##

> **Note:** all existing files will be overwritten!

Init an empty repository, link it with the existing repository, get metadata, force checkout and set the upstream branch:

```bash
cd
git init
git remote add origin https://github.com/tuxcfg/home.git
git fetch
git checkout -ft origin/master
```

Separate .git from working tree:

```bash
mkdir -p ~/.config/git
mv ~/.git ~/.config/git/home
```


## Update ##

Get metadata from a remote repository, verify the difference and apply:

```bash
git-home fetch
git-home diff ..origin/master
git-home pull
```
