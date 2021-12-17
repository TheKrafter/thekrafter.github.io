#!/bin/bash

# Customization Script for Pop!_OS, by Krafter, and written in Bash.
# This, once complete should be able to install all the programs I need, and do a bit of customization too.

echo 'This bash script by Krafter (thekrafter.github.io) will install a few programs for a freshly installed Pop!_OS system.'
echo 'It will install Pithos, OBS, GIMP, Audacity, Steam, Neofetch, Gnome Tweaks, Discord, VsCodium, NextCloud Sync Client, GitHub Desktop, Tor Browser, Minecraft Java Edition, Wine.'
# Ask Before Proceeding
read -p "Continue (y/n)?" CONT
if [ "$CONT" = "y"]; then
  echo "yes";
else
  echo "no" && exit;
fi

# Make sure system is up to date
echo 'Updating System...'
sudo apt update && sudo apt upgrade


# Install all the programs I need:
# .deb applications
echo 'Installing .deb applications: Pithos, OBS, GIMP, Audacity, Steam, Neofetch, Gnome Tweaks.'
sudo apt install pithos obs-studio gimp audacity steam neofetch gnome-tweaks

# flatpak applications
echo 'Installing flatpak applications: Discord, VsCodium, NextCloud, GitHub Desktop'
sudo flatpak install discord vscodium nextcloud github-desktop

# install snapd
echo 'Installing Snapcraft By Canonical'
sudo apt install snapd

# snap applications
echo 'Installing snaps: Tor Browser'
sudo snap install tor-mkg20001

# Install Minecraft
echo 'Installing Minecraft Java Edition from Minecraft.net'
cd ~/Downloads
wget https://launcher.mojang.com/download/Minecraft.deb
ls
sudo dpkg install -i Minecraft.deb
cd ~

# Wine
echo 'Installing Wine'
sudo apt install wine-stable-amd64
