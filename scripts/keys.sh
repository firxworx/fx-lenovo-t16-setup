#!/usr/bin/env bash

# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# RUN THESE MANUALLY 

# set a secure ssh password when prompted
ssh-keygen -t ed25519 -C "kfirko@bitcurve.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

# for oldschool rsa key
# ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# also see 
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key-for-a-hardware-security-key

# https://github.com/charmbracelet/keygen
