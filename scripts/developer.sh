#!/usr/bin/env bash

# in most cases these will all already be installed other than perhaps git 
sudo apt install -y ca-certificates nupg lsb-release
sudo apt install build-essential procps curl wget rsync file git

sudo apt install jq

# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# sudo apt update

# sudo apt install -y adb apt-transport-https calibre chromium-browser code docker-ce docker-ce-cli
# sudo apt install -y containerd.io gcc git gnome-shell-extensions gnome-tweaks htop make musescore3 neofetch openjdk-17-jdk
# sudo apt install tabby-terminal teams tmux virtualbox zsh

sudo apt install tmux 

# https://docs.brew.sh/Homebrew-on-Linux

# don't run but read how this pulls in an ansible to run
# https://github.com/dormakaba/developer-workplace-ubuntu-ansible/blob/master/bootstrap.sh

# https://github.com/hannodrefke/ubuntu-frontend-scripts/blob/master/update_vscode.sh


# pnpm-driven node install (run as user not root)
# pnpm will also add lines to bashrc
wget -qO- https://get.pnpm.io/install.sh | sh -

# source to get paths working
source ~/.bashrc

# use pnpm as the node version manager 
pnpm env use --global lts

# https://pnpm.io/installation
# https://pnpm.io/cli/env

# customize vim
# ~/.vimrc
