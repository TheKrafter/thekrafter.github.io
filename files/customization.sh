#!/bin/bash
# Customization Script for Pop!_OS, by Krafter, and written in Bash.
##################################################
# (c) 2021 'Krafter' [https://www.github.com/TheKrafter]
# Published Under the MIT License.
##################################################
# Version alpha-1.1
# This, once complete should be able to install all the programs I need, and do a bit of customization too.
# The pauses are to allow the user to read the messages, which I find to be helpful. They only pause for a sec.

echo 'This bash script by Krafter (thekrafter.github.io) will install a few programs for a freshly installed Pop!_OS system.'
echo 'It will install Pithos, OBS, GIMP, Audacity, Steam, Neofetch, Gnome Tweaks, Discord, VsCodium, NextCloud Sync Client, GitHub Desktop, Tor Browser, Minecraft Java Edition, Wine, Pipewire.'
sleep 2s
# # Commence Install # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Make sure system is up to date
echo 'Updating System...'
sudo apt update && sudo apt upgrade
sudo flatpak update && sudo flatpak upgrade


# Install all the programs I need:

# Productivity
read -p "Install Productivity applications 'GIMP, Inkscape, Audacity, VsCodium, NextCloud, GitHub Desktop'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing .deb applications: GIMP, Inkscape, Audacity.'
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
    sudo apt install obs-studio kdenlive
fi

# Utilities
read -p "Install Basic Utility applications 'Gnome Tweaks, Htop, Neofetch, CPUfetch, Stacer'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing .deb applications: Gnome Tweaks, Htop, Neofetch, CPUfetch.'
    sudo apt install gnome-tweaks htop neofetch cpufetch
    echo 'Adding Repo: ppa:oguzhaninan/stacer'
    sudo add-apt-repository ppa:oguzhaninan/stacer
    sudo apt-get update
    echo 'Installing .deb application: Stacer.'
    sudo apt-get install stacer
fi

# Pithos
read -p "Install 'Pithos'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing .deb application: Pithos.'
    sudo apt install pithos
fi

# Gaming 
read -p "Install Gaming applications 'Steam, Lutris, bsdgames'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing .deb applications: Steam, Lutris, bsdgames.'
    sudo apt install steam lutris bsdgames
fi

# Social
read -p "Install Social applications 'Discord, Pidgin IRC'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing flatpak applications: Discord, Pidgin IRC.'
    sudo flatpak install discord pidgin
fi

# install snapd
read -p "Install 'snapd' by Canonical (required for TOR)? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing Snapcraft By Canonical'
    sudo apt install snapd
    # install TOR
    read -p "Install snap: Tor Browser Launcher? [y/n]" -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo 'Installing Tor Browser Launcher'
        sudo flatpak install com.github.micahflee.torbrowser-launcher
    fi
fi

# Minecraft
read -p "Install Minecraft Java Edition by Mojang? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing Minecraft Java Edition from Minecraft.net'
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
fi


# Wine
read -p "Install 'Wine Is Not An Emulator'? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Installing Wine...'
    sudo apt install wine-stable-amd64
fi

# Pipewire
read -p "Install Pipewire? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # from this reddit post: https://www.reddit.com/r/pop_os/comments/ofdalv/replaced_pulseaudio_with_pipewire_on_popos_2104_i/
    # thanks to u/bob418
    echo 'adding repo...'
    sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream
    sudo apt update
    echo 'installing pipewire...'
    sudo apt install gstreamer1.0-pipewire pipewire-media-session libspa-0.2-bluetooth libspa-0.2-jack pipewire pipewire-audio-client-libraries
    read -p "Were there unmet dependencies? [y/n]" -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo 'fixing unmet depends...'
        sudo apt --fix-broken install
        sudo apt install gstreamer1.0-pipewire pipewire-media-session libspa-0.2-bluetooth libspa-0.2-jack pipewire pipewire-audio-client-libraries

    fi

    systemctl --user daemon-reload
    systemctl --user --now disable pulseaudio.service pulseaudio.socket
    systemctl --user mask pulseaudio
    systemctl --user --now enable pipewire pipewire-pulse
    systemctl --user --now enable pipewire-media-session.service
fi
# NetworkManager instead of systemd-resolved
read -p "Replace systemd-resolved's services with that of NetworkManager? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo systemctl stop systemd-resolved
    sudo systemctl disable systemd-resolved
    cat /etc/NetworkManager/NetworkManager.conf | sed "3 i\dns=default" | sudo tee /etc/NetworkManager/NetworkManager.conf
    sudo rm /etc/resolv.conf
    sudo systemctl restart NetworkManager
fi

read -p "Shrink headerbars in gnome? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo '/*' >> $HOME/.config/gtk-3.0/gtk.css
    echo ' Decrease the size of head bars for non-CSD applications' >> $HOME/.config/gtk-3.0/gtk.css
    echo ' Gnome 20 (Fedora 24) compatible version' >> $HOME/.config/gtk-3.0/gtk.css
    echo ' https://unix.stackexchange.com/questions/276951/how-to-change-the-titlebar-height-in-standard-gtk-apps-and-those-with-headerbars' >> $HOME/.config/gtk-3.0/gtk.css
    echo '*/' >> $HOME/.config/gtk-3.0/gtk.css
    echo '/* x11 and xwayland windows */' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    window.ssd headerbar.titlebar {' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    padding-top: 3px;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    padding-bottom: 3px;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    min-height: 0;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    /* remove border between titlebar and window */' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    border: none;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    background-image: linear-gradient(to bottom,' >> $HOME/.config/gtk-3.0/gtk.css
    echo '     shade(@theme_bg_color, 1.05),' >> $HOME/.config/gtk-3.0/gtk.css
    echo '     shade(@theme_bg_color, 1.00));' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    box-shadow: inset 0 1px shade(@theme_bg_color, 1.4);' >> $HOME/.config/gtk-3.0/gtk.css
    echo '}' >> $HOME/.config/gtk-3.0/gtk.css
    echo 'window.ssd headerbar.titlebar button.titlebutton {' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    padding: 0px;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    min-height: 0;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    min-width: 0;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '}' >> $HOME/.config/gtk-3.0/gtk.css
    echo '/* native wayland ssd windows */' >> $HOME/.config/gtk-3.0/gtk.css
    echo '.default-decoration {' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    padding: 3px;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    min-height: 0;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    /* remove border between titlebar and window */' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    border: none;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    background-image: linear-gradient(to bottom,' >> $HOME/.config/gtk-3.0/gtk.css
    echo '     shade(@theme_bg_color, 1.05),' >> $HOME/.config/gtk-3.0/gtk.css
    echo '     shade(@theme_bg_color, 1.00));' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    box-shadow: inset 0 1px shade(@theme_bg_color, 1.4);' >> $HOME/.config/gtk-3.0/gtk.css
    echo '}' >> $HOME/.config/gtk-3.0/gtk.css
    echo '.default-decoration .titlebutton {' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    padding: 0px;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    min-height: 0;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '    min-width: 0;' >> $HOME/.config/gtk-3.0/gtk.css
    echo '}' >> $HOME/.config/gtk-3.0/gtk.css
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
clear && neofetch
echo "You've now got a customized Pop!_OS or Ubuntu Install!"
# END OF SCRIPT.