# Installation for Ubuntu 20.04

# disable lockdown screen
gsettings get org.gnome.desktop.lockdown disable-lock-screen

# install base packages
sudo apt install -y mc vim git apt-transport-https curl \
         dirmngr gnupg ca-certificates software-properties-common

# install brave browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# install remmina
sudo apt-add-repository -y ppa:remmina-ppa-team/remmina-next
sudo apt update
sudo apt install -y remmina remmina-plugin-rdp remmina-plugin-secret

# install Sublime 3
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository -y "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install -y sublime-text

# install KePassXC
sudo add-apt-repository -y ppa:phoerious/keepassxc
sudo apt update && sudo apt install -y keepassxc
