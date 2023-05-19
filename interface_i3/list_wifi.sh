#! /bin/bash

# Ativa wifi da maquina
nmcli d wifi on >> /dev/null

# Lista pontos de acesso
nmcli d wifi list

exit 0
