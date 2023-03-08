#!/bin/bash

# Install yadm
sudo apt-get install yadm

# Clone your dotfiles repository using yadm
yadm clone https://github.com/Yushi5058/mydotfiles

# Apply the dotfiles to your system
yadm bootstrap

