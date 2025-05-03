#!/usr/bin/env bash 

apt install git

# git uses ~/.gitconfig for local user's git config

git config --global user.name "Kevin Firko"
git config --global user.email "kfirko@bitcurve.com"

git config --global init.defaultBranch main

# automatically set -u 
git config --global push.autosetupremote true

# https://www.inmotionhosting.com/support/website/git/git-config/
# git config --list --system
# git config --list --global
# git config --list --local

# https://blog.gitbutler.com/how-git-core-devs-configure-git/

# force it to be a conscious choice: "git pull --rebase" or "git pull --no-ff"
# https://graphite.dev/guides/git-config-ff-only 
git config  --global pull.ff only


# https://jvns.ca/blog/2024/02/16/popular-git-config-options/