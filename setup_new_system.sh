su #get root
apt-get install sudo
adduser kossy sudo #add user to sudoers
su kossy

## Update and Upgrade Packages
sudo apt-get update
sudo apt-get upgrade

##
# misc tools
##
sudo apt-get install htop wget curl

##
# Theming and Icons
##

# Numix theming
sudo apt-get install git ruby make
sudo gem install sass

sudo apt-get install libgdk-pixbuf2.0-dev libglib2.0 libxml2-utils

cd ~
mkdir git
cd git

sudo git clone https://github.com/numixproject/numix-gtk-theme.git
cd numix-gtk-theme/

sudo make
sudo make install

xfconf-query -c xsettings -p /Net/ThemeName -s "Numix"
xfconf-query -c xfwm4 -p /general/theme -s "Numix"

# Numix Circle Icons
cd ..
sudo git clone https://github.com/numixproject/numix-icon-theme-circle.git
cd numix-icon-theme-circle/
sudo cp Numix-Circle /usr/share/icons
xfconf-query -c xsettings -p /Net/IconThemeName -s "Numix Circle"
cd ~

#Bluetooth + audio
sudo apt-get install pulseaudio pulseaudio-module-bluetooth pavucontrol bluez-firmware
sudo apt-get install blueman

##
# Development Tools
##

echo "Installing Development Tools..."

# Atom Text Editor
wget -O atom.deb https://atom.io/download/deb
sudo dpkg -i atom.deb

echo "- Atom Installed."

# Git Kraken
wget -O git-kraken.deb https://www.gitkraken.com/download/linux-deb
sudo dpkg -i git-kraken.deb

echo "- Git Kraken Installed."

echo "DONE."


##
# Other Software
##

# Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#Spotify
# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client
