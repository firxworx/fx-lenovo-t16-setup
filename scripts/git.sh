#!/usr/bin/env bash 

apt install git

git config --global user.name "Kevin Firko"
git config --global user.email "kfirko@bitcurve.com"

# https://www.inmotionhosting.com/support/website/git/git-config/
# git config --list --system
# git config --list --global
# git config --list --local

# https://blog.gitbutler.com/how-git-core-devs-configure-git/

# force it to be a conscious choice: "git pull --rebase" or "git pull --no-ff"
# https://graphite.dev/guides/git-config-ff-only 
git config  --global pull.ff only

