#! /bin/bash

NEXT=""

validate_input() {
    
    if [ $NEXT = "1" ]; then
        echo "Instalando pacotes essenciais e o i3wm..."
        ./configs/i3wm/install_pakages.sh
    elif [ $NEXT = "2" ]; then
        echo "Aplicando configurações do vim..."
        ./configs/vim/apply_vimrc.sh
    elif [ $NEXT = "3" ]; then
        echo "Aplicando configurações de teclado..."
        sudo ./configs/Keyboard/Keyboard_config.sh
    elif [ $NEXT = "4" ]; then
        echo "Aplicando configurações de fontes..."
        ./configs/fonts/install_fonts.sh
    elif [ $NEXT = "5" ]; then
        echo -e "Saindo..."
        exit 1
    fi

}

while [[ ! $NEXT = "1" && ! $NEXT = "2"  && ! $NEXT = "3" ]]; do
    echo -e "Deseja iniciar qual configuração?"
    echo -e "1) i3wm."
    echo -e "2) Vim."
    echo -e "3) Teclado."
    echo -e "4) Fontes."
    echo -e "5) Sair."
    read NEXT
    
    if [ ! -z $NEXT ]; then
        validate_input
    fi
    NEXT=""
done

