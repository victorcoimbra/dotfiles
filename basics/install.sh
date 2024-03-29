!/bin/bash

# A collection os applications that I use and sometimes I need to remember 

# Update
sudo pacman -Sys

# Install yay

# sudo pacman -S make fakeroot gcc
# git clone https://aur.archlinux.org/yay.git ~/yay
# cd ~/yay
# makepkg -si
# yay

# Install mpd
# sudo pacman  -S mpd
# sudo pacman  -S ncmpcpp

# sudo mkdir ~/.config/mpd/
# cp /usr/share/doc/mpd/mpdconf.example ~/.config/mpd/
# cp ~/Documents/archinit/basics/mpd/mpd.conf ~/.config/mpd
# mkdir ~/.config/mpd/playlists
# yay mopidy
# yay mopidy-spotify

# Install Chrome
yay chrome

# Install Polybar
sudo pacman -S polybar
sudo mkdir ~/.config/polybar/
sudo touch ~/.config/polybar/config     
cp /usr/share/doc/polybar/config ~/.config/polybar/config

# Install zsh
sudo pacman -S zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Kitty
sudo pacman -S kitty

# Install Flameshot
yay flameshot

# Install code
sudo pacman -S code

# Install VPN
sudo tee -a /etc/pacman.conf << EOF
[pritunl]
Server = https://repo.pritunl.com/stable/pacman
EOF

sudo pacman-key --keyserver hkp://keyserver.ubuntu.com -r 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo pacman-key --lsign-key 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo pacman -Sy
sudo pacman -S pritunl-client-electron
sudo pacman -S pritunl-client-electron-numix-theme

# Install DBeaver
yay dbeaver

# Install pywal
yay pywal