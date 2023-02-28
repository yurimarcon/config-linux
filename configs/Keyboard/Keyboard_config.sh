#!/bin/bash

WORK_DIR=$(pwd)
cd $"$WORK_DIR"/configs/Keyboard/

# Configura layout de teclado para bnt2
sudo chmod go+w /etc/default/keyboard
sudo cat keyboard > /etc/default/keyboard
echo "####################################################"
echo "Configurando teclado como ABNT2..."
echo "####################################################"

cd $"$WORK_DIR"

