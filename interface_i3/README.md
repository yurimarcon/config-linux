# Processos de intalacao

## Primeiros passos da intalacao

Se estiver cendo esse conteudo pelo GitHub, primeiro deve intalar o git na sua maquina e clonar esse repositorio.
Apos isso, voce devera rodar o arquivo ./install.sh para instalar todos os programas essenciais para subir a interface do i3wm e alguns pacotes importantes.
Com isso basta reiniciar a maquina com o comando 'reboot' e informar usuario e senha e depois rodar o comando 'startx' para subir a interface grafica.

Dessa forma voce j[a tem um sistema operacional util para comecar a brincar. ;)


## Como configurar o bluetooth?

Para configurar o bluetooth temos uma passo a passo bem detalhado nesse post:
https://tipsforlinux.com/pt/7077-how-to-configure-bluetooth-on-debian/

Mas basicamente precisaremos instalar alguns pacotes:

```sh
sudo apt install wifi-menu firmware-iwlwifi rfkill blueman
```
> O ultimo pacote no camndo a cima (blueman) foi a opcao que eu escolhi para usar, caso prefira pode selecionar outro gerenciador.


## Como conectar ao Wifi sem interface grafica?

Primeiro passo confira se possui o pacote do NetworkMenager com o seguinte comando:

```sh
which nmcli
```

Se nao retornar o diretorio do pacote vai precisar intalar rodando:

```sh
sudo apt install nmcli
```

Agora precisamos ver se o NetworkMenager esta ativo, entao rode:

```sh
sudo systemctl status NetworkMenager
```

Se o processo estiver 'morto' entao rode:

```sh
sudo systemctl start NetworkMenager
```

E consulte o status novamente, mas ja deve estar funcionando.
Agora vamos ativar nosso wifi com o  'nmcli' com o seguinte comando:

```sh
nmcli d wifi on
```

Vamos listar as redes wifi:

```sh
nmcli d wifi list
```

E para conectar basta rodar o seguinte comando:
> Substitua a tag <SSID> pelo nome do wifi que deseja conectar e a tag <PASSWORD> pela senha do wifi.

```sh
nmcli d wifi connect <SSID> password <PASSWORD>
```

Em instantes sua maquina devera estar conectada. :)


