#!/bin/bash
# Customization Script for Linux Systems with Flatpak, by Krafter, and written in Bash.
##################################################
# (c) 2021 'Krafter' [https://www.github.com/TheKrafter]
# Published Under the MIT License.
##################################################
# Version alpha-1.2
# This, once complete should be able to install all the flatpak programs I need.
WILL_INSTALL_FLATPAK='Inkscape, VSCodium, Nextcloud Sync, GitHub Desktop, OBS Studio, Kdenlive, Pithos, Discord, Fractal, Tor Browser, Minecraft.'
# It will also put the mcpelauncher appimage in ~/Applications/mcpelauncher/ (as the flatpak no longer exists)
MCPELAUNCHER_DL='https://github.com/ChristopherHX/linux-packaging-scripts/releases/download/v0.3.3-683/Minecraft_Bedrock_Launcher-x86_64-v0.3.3.683.AppImage'
MCPELAUNCHER='Minecraft_Bedrock_Launcher-x86_64-v0.3.3.683.AppImage'
echo 'This bash script by Krafter (thekrafter.github.io) will install some Flatpak programs for a freshly installed Linux system. (and 1 AppImage)'
echo 'This script assumes you are on an x86_64 (or amd64) machine with flatpaks and flathub enabled.'
echo 'Flatpak Apps to Install: $WILL_INSTALL_FLATPAK'
echo
read -p "Do you agree that Flatpak is the superior ? [Y/n]" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing org.inkscape.Inkscape'
    flatpak install -y flathub org.inkscape.Inkscape
    echo 'Installed.'
    echo 'Installing com.vscodium.codium'
    flatpak install -y flathub com.vscodium.codium
    echo 'Installed.'
    echo 'Installing com.nextcloud'
    flatpak install -y flathub com.nextcloud
    echo 'Installed.'
    echo 'Installing io.github.shiftkey.Desktop'
    flatpak install -y flathub io.shiftkey.Deskop
    echo 'Installed.'
    echo 'Installing com.obsproject.Studio'
    flatpak install -y flathub com.obsproject.Studio
    echo 'Installed.'
    echo 'Installing org.kde.kdenlive'
    flatpak install -y flathub org.kde.kdenlive
    echo 'Installed.'
    echo 'Installing io.github.Pithos'
    flatpak install -y flathub io.github.Pithos
    echo 'Installed.'
    echo 'Installing com.discordapp.Discord'
    flatpak install -y flathub com.discordapp.Discord
    echo 'Installed.'
    echo 'Installing org.gnome.Fractal'
    flatpak install -y flathub org.gnome.Fractal
    echo 'Installed.'
    echo 'Installing com.github.micahflee.torbrowser-launcher'
    flatpak install -y flathub com.github.micahflee.torbrowser-launcher
    echo 'Installed.'
    echo 'Installing com.mojang.Minecraft'
    flatpak install -y flathub com.mojang.Minecraft
    echo 'Installed.'
    echo 'Installing MCPE Launcher.'
    mkdir $HOME/Applications/mcpelauncher/
    cd $HOME/Applications/mcpelauncher/
    wget $MCPELAUNCHER_DL
    chmod +x $MCPELAUNCHER
    echo 'alias mcpe="$HOME/Applications/mcpelauncher/$MCPELAUNCHER' >> $HOME/.bashrc
    echo 'mcpe is now aliased to run MCPE Launcher in your bashrc'
    echo 'Installed.'
    echo 'Installed '$WILL_INSTALL_FLATPAK
else
    echo "Well then, u dont like flatpaks? Who are you? A Snap user? Just No. Watch The Linux Experiment's video."
    echo "Krafter Dissaproves."
fi
echo "Complete."
