#! /bin/bash

NEXT=""

validate_input() {

    if [ $NEXT = "3" ]; then
        echo -e "Saindo..."
        exit 1
    elif [ $NEXT = "1" ]; then
        echo "Aplicando configurções do i3wm..."
        ./i3wm/apply_i3wm_config.sh
    elif [ $NEXT = "2" ]; then
        echo "Aplicando configurações do vim..."
        ./vim/apply_vimrc.sh
    fi

}

while [[ ! $NEXT = "1" && ! $NEXT = "2"  && ! $NEXT = "3" ]]; do
    echo -e "Deseja iniciar qual configuração?"
    echo -e "1) i3wm."
    echo -e "2) vim."
    echo -e "3) sair."
    read NEXT
    
    if [ ! -z $NEXT ]; then
        validate_input
    fi
    NEXT=""
done

