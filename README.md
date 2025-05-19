# Infos

## Instruções para instalação

### Preparar o ambiente

Para preparar o ambiente rode o arquivo install.sh.

### Instalação do debian

Para instalar o Debian o passo a passo está no aquivo instalação-debian.sh.

### Como jagar Tron.
Basta todar no terminal o seguinte comando:

```sh
ssh sshtron.zachlatta.com
```

Esse é um jogo online que se joga com as teclas WASD ou os direcionais do Vim, se você
utilizar os direcionais o jogo ecerra.
Sua cor estará no topo da janela.

## Formatando PenDrive pela linha de comando GNU.

Plugue o dispositivo de armazenamento na maquina e rode o comando:

```sh
lsblk
```

Encontre a unidade que você está querendo formatar.
> MUITO CUIDADO! Se selecionar a  unidade errada pode apagar registros de forma
> irreversível.

Após saber qual unidade quer formatar (Vamos supor que seja a unidade /dev/sdb) rode o comando:

```sh
sudo fdisk /dev/sdb
```

Aperte "p" e enter para mostrar em tela o tipo de label do disco e o tipo das
tartições. Para uma unidade de armazenamento que pode ser reconhecida em
qualquer dispositivo precisamos colocar o labeltype como "dos" para isso aperte
a tecla "o" e enter.
Agora que temos o labeltype configurando você pode apagar as outras partição
caso exista, para apagar uma partição devemos apertar atecla "d" e irformar o
número da partição que queremos apagar.
Após apagar todas as partições devemos criar uma partição nova, no nosso caso
vamos criar um pendrive com apenas uma partição, mas poderia ser quantas
pertições quiser. Para criar uma partição basta paertar "n" depois informar se a
partição é primaria, em seguida informar de qual unidade dentro do disco a qual
unidade será o tamenho dessa partição, e o tamanho (Você pode ir apernando enter
após ter apertado "n" que as respostas defaut fará o que queremos nesse caso).
.
Após termos criado a partição pode apertar "p" para visualizar o que criamos até
o momento, e você terá criado uma partição do tipo Linux, vamos alterar isso
apertando a tecla "t" para mudar o tipo da partição, em seguida você pode ver os
tipos apertando "L", mas o tipo que queremos é o número 7, esse tipo permite que
nossa unidade de disco sejá acessível tanto em Linux, Mac e Windows. aperte
enter e no final aperte "w" para gravar o que fizemos.

Até aqui apenas criamos as partições dentro do dispositivo, ainda não definimos
a formatação. Para isso vamos usar o programa mkfs, então rode o seguinte
comando:

```sh
sudo mkfs.exfat /dev/sdb1
```

Esse comando pode demorar alguns segundos pois está fazendo a formatação da
partição.

> Note que não formatamos unidade de disco e sim uma partição, unidades de disco
> não é possível ser formatadas, apenas partições.

Pronto, agora pode gravar informações no seu pendrive que será acessível por
qualquer dispositivo.
 
### Arrumando a data

```sh
sudo date -s mm/dd/yyyy
```

