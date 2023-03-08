#!/bin/bash

# Install yadm
sudo apt-get install yadm

# Clone your dotfiles repository using yadm
yadm clone https://github.com/Yushi5058/mydotfiles

# Apply the dotfiles to your system
yadm bootstrap



# Read list of apps from apps.txt
while read app; do
    # Try to install app using apt
    if sudo apt-get -qq install $app; then
        echo "$app installed successfully using apt"
    else
        # Try to install app using snap
        if sudo snap install $app; then
            echo "$app installed successfully using snap"
        else
            # Try to install app using flatpak
            if sudo flatpak install -y $app; then
                echo "$app installed successfully using flatpak"
            else
                echo "Failed to install $app using any method"
            fi
        fi
    fi
done < apps.txt


