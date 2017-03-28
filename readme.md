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


## Update ##

Get metadata from a remote repository, verify the difference and apply:

```bash
cd
git fetch
git diff ..origin/master
git pull
```
