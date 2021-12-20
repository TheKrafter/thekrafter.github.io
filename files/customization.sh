#!/bin/bash
# Customization Script for Pop!_OS, by Krafter, and written in Bash.
##################################################
# (c) 2021 'Krafter' [https://www.github.com/TheKrafter]
# Published Under the MIT License.
##################################################
# Version alpha-1.0
# This, once complete should be able to install all the programs I need, and do a bit of customization too.
# The pauses are to allow the user to read the messages, which I find to be helpful. They only pause for a sec.

echo 'This bash script by Krafter (thekrafter.github.io) will install a few programs for a freshly installed Pop!_OS system.'
echo 'It will install Pithos, OBS, GIMP, Audacity, Steam, Neofetch, Gnome Tweaks, Discord, VsCodium, NextCloud Sync Client, GitHub Desktop, Tor Browser, Minecraft Java Edition, Wine.'
sleep 1s
# # Commence Install # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Make sure system is up to date
echo 'Updating System...'
sleep 1s
sudo apt update && sudo apt upgrade
sudo flatpak update && sudo flatpak upgrade


# Install all the programs I need:

# Productivity
read -p "Install Productivity applications 'GIMP, Inkscape, Audacity, VsCodium, NextCloud, GitHub Desktop'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing .deb applications: GIMP, Inkscape, Audacity.'
    sleep 2s
    sudo apt install gimp inkscape audacity
    echo 'Installing flatpak applications: VsCodium, NextCloud, GitHub Desktop.'
    sudo flatpak install vscodium nextcloud github-desktop
fi

# Content Creation
read -p "Install Content Creation applications 'OBS, Kdenlive'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing .deb applications: OBS, Kdenlive.'
    sleep 2s
    sudo apt install obs-studio kdenlive
fi

# Utilities
read -p "Install Basic Utility applications 'Gnome Tweaks, Htop, Neofetch, CPUfetch'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing .deb applications: Gnome Tweaks, Htop, Neofetch, CPUfetch.'
    sleep 2s
    sudo apt install gnome-tweaks htop neofetch cpufetch
fi

# Pithos
read -p "Install 'Pithos'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing .deb application: Pithos.'
    sleep 2s
    sudo apt install pithos
fi

# Gaming 
read -p "Install Gaming applications 'Steam, Lutris, bsdgames'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing .deb applications: Steam, Lutris, bsdgames.'
    sleep 2s
    sudo apt install steam lutris bsdgames
fi

# Social
read -p "Install Social applications 'Discord, Pidgin IRC'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing flatpak applications: Discord, Pidgin IRC.'
    sleep 2s
    sudo flatpak install discord pidgin
fi

# install snapd
read -p "Install 'snapd' by Canonical (required for TOR)? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing Snapcraft By Canonical'
    sleep 2s
    sudo apt install snapd
    # install TOR
    read -p "Install snap: Tor Browser Launcher? [y/n]" -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo 'Installing Tor Browser Launcher'
        sleep 2s
        sudo flatpak install com.github.micahflee.torbrowser-launcher
    fi
fi

# Minecraft
read -p "Install Minecraft Java Edition by Mojang? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing Minecraft Java Edition from Minecraft.net'
    sleep 1s
    cd ~/Downloads
    echo 'Downloading...'
    wget https://launcher.mojang.com/download/Minecraft.deb
    ls
    echo 'Installing...'
    sudo dpkg install -i Minecraft.deb
    echo 'Cleaning...'
    rm Minecraft.deb
    cd ~
    echo 'Installed Minecraft Java Edition.'
    sleep 2s
fi


# Wine
read -p "Install 'Wine Is Not An Emulator'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing Wine...'
    sudo apt install wine-stable-amd64
fi

# .bashrc modifications
read -p "Edit '.bashrc'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Editing ~/.bashrc.'
    # Edit .bashrc
    echo '# Execute neofetch upon opening of terminal' >> ~/.bashrc
    echo 'neofetch' >> ~/.bashrc
    echo '' >> ~/.bashrc
    echo '#################################################' >> ~/.bashrc
    echo '#   ALIASES                                     #' >> ~/.bashrc
    echo '#################################################' >> ~/.bashrc
    echo 'alias tetris="tetris-bsd"' >> ~/.bashrc
    echo 'alias home="cd ~/ && ls"' >> ~/.bashrc
    echo 'alias bashrc="nano ~/.bashrc"' >> ~/.bashrc
    echo 'alias python="python3"' >> ~/.bashrc
    echo 'alias vi="nano"' >> ~/.bashrc
    echo 'alias apt-up="sudo apt update && sudo apt upgrade"' >> ~/.bashrc
    echo '' >> ~/.bashrc
fi

echo 'Done!'
echo "# Successfuly Editied by Krafter's Customization Script, from https://thekrafter.github.io/files/customization.sh" >> ~/.bashrc
echo 'Clearing and running neofetch...'
sleep 3s
clear && neofetch
echo "You've now got a customized Pop!_OS or Ubuntu Install!"
# END OF SCRIPT.