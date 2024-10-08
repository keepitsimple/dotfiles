# Installation for Ubuntu 20.04

# disable lockdown screen
gsettings get org.gnome.desktop.lockdown disable-lock-screen

# install base packages
sudo apt install -y mc vim tmux  apt-transport-https curl dirmngr gnupg ca-certificates software-properties-common

# install dev packages
sudo apt install -y git 

# install brave browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# install Dropbox
echo "deb [arch=amd64] http://linux.dropbox.com/ubuntu disco main" | sudo tee /etc/apt/sources.list.d/dropbox.list
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
sudo apt-get update & sudo apt-get install -y python3-gpg dropbox


# install Sublime 3
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository -y -u "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install -y sublime-text

# install KePassXC
sudo add-apt-repository -y -u ppa:phoerious/keepassxc
sudo apt install -y keepassxc

# install shutter
sudo add-apt-repository -y -u ppa:linuxuprising/shutter
sudo apt install -y shutter

# install WebStorm
sudo snap install webstorm --classic --edge

# Install Gnome Shell Extensions support
sudo apt-get install -y chrome-gnome-shell

# install zsh
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install Slack
sudo snap install slack --classic

# install MS teams
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" | sudo tee /etc/apt/sources.list.d/teams.list
sudo apt update & sudo apt install -y teams

# install remmina
sudo apt-add-repository -y -u ppa:remmina-ppa-team/remmina-next
sudo apt install -y remmina remmina-plugin-rdp remmina-plugin-secret

# install Foliate e-book reader
sudo add-apt-repository ppa:apandada1/foliate
sudo apt install foliate

# install RHVoice TTS
sudo add-apt-repository -y -u ppa:linvinus/rhvoice
sudo apt-get install rhvoice  rhvoice-english

# integrate RHVoice TTS to Foliate

vim ~/rhvoiceTTS
#!/bin/bash
/usr/bin/RHVoice-client -s Irina+CLB -r 0.2 | aplay &
trap 'kill $!; exit 0' INT
wait



# Spotify 
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install -y spotify-client

# Install fd-find (https://github.com/sharkdp/fd) & fzf
sudo apt install fd-find fzf 

# Install fast code searcher(https://github.com/ggreer/the_silver_searcher)
sudo apt-get install -y silversearcher-ag

# cat on steroids
sudo apt install bat

# install alacritty (GPU xterm)
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install -y alacritty

# byobu - wrapper for tmux
sudo apt-get install -y byobu

# xneur аналог Punto Switcher
sudo apt install -y xneur
sudo apt install -y hunspell-ru hunspell-en-us
