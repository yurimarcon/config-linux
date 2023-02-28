#!/bin/bash

WORK_DIR=$(pwd)
cd $"$WORK_DIR"/configs/fonts/

# Instalando fonte do NerdFonts
echo  "####################################################"
echo "Configurando fonte..."
echo "####################################################"
sudo cp DroidSansMono.zip /usr/share/fonts/
cd /usr/share/fonts/
sudo unzip DroidSansMono.zip
sudo rm DroidSansMono.zip
fc-cache

cd $"$WORK_DIR"
