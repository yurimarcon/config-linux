#! /bin/bash

cd ~/config-linux/configs/i3wm/

sudo apt install \
    git \
    xorg \
    i3 \
    i3blocks \
    xfce4-terminal \
    arandr \
    ranger \
    pcmanfm \
    chromium \
    neofetch \
    lxappearance \
    vim \
    vim-gtk3 \
    nitrogen \
    feh \
    apulse \
    arc-theme \
    papirus-icon-theme \
    breeze-cursor-theme \
    rfkill \
    blueman \
    flameshot \
    unzip



# Copiando o arquivo de configuracoes do i3wm
cp ~/.config/i3/config ~/.config/i3/config.old
cat config > ~/.config/i3/config
cp -r ~/config-linux/configs/i3blocks ~/.config/
echo -e "\n####################################################"
echo "Arquivo de configuracao do i3 e i3blocks copiado com sucesso!!!"
echo -e "####################################################\n"



# Criação de pastas na home do usuario
mkdir ~/Documents ~/Downloads ~/Images ~/Videos ~/Music ~/Publish
echo -e "\n####################################################"
echo "Criando diretórios na raiz do usuario..."
echo -e "####################################################\n"



# Copiando Wallpapers para o deiretorio Images
cp ../Wallpapers ~/Images/ -r &&
# Aplicando um wallpaper inicial
feh --bg-fill ~/Images/Wallpapers/montain_debian.jpg
echo -e "\n####################################################"
echo "Copiando wallpapers e definindo um como default..."
echo -e "####################################################\n"



cd ~/config-linux

