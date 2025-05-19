#! /bin/bash

# Ativa wifi da maquina
nmcli d wifi on >> /dev/null

# Lista pontos de acesso
nmcli d wifi list

# Conecta à rede
nmcli d wifi connect <nome-da-rede> password <password>

exit 0
