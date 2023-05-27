#! /bin/bash

sudo apt install \
    git \
    xorg \
    i3 \
    i3blocks \
    xfce4-terminal \
    arandr \
    lightdm \
    lightdm-gtk-greeter \
    ranger \
    pcmanfm \
    chromium \
    neofetch \
    lxappearance \
    vim \
    nitrogen \
    feh \
    apulse \
    arc-theme \
    papirus-icon-theme \
    breeze-cursor-theme \
    firmware-iwlwifi \
    rfkill \
    blueman



# Copiando o arquivo de configuracoes do i3wm
cp ~/.config/i3/config ~/.config/i3/config_bkp
cat config > ~/.config/i3/config
echo -e "\n####################################################"
echo "Arquivo de configuracao do i3 copiado com sucesso!!!"
echo -e "####################################################\n"



# Criação de pastas na home do usuario
mkdir ~/Documents ~/Downloads ~/Images ~/Videos ~/Music ~/Publish



# Copiando Wallpapers para o deiretorio Images
cp ./Wallpapers ~/Images/ -r &&
# Aplicando um wallpaper inicial
feh --bg-fill Images/Wallpapers/montain_debian.jpg
