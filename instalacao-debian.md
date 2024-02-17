# Instalação do Debian

## Criar partições GPT
- BOOT
- ROOT


## Formatar com mkfs

```sh
sudo mkfs.fat /dev/sdc1
```

```sh
sudo mkfs.ext4 /dev/sdc2
```

## Fazer a instalaçao do Debian com debootstrap

```sh
sudo debootstrap stable /mnt/ http://deb.debian.org/debian
```

## Montar as partições

```sh
#!/bin/bash

sudo mount /dev/sdc2 /mnt
sudo mount --bind /dev /mnt/dev
sudo mount --bind /sys /mnt/sys
sudo mount --bind /proc /mnt/proc
```

## Chroot para o novo sistema

```sh
sudo chroot /mnt
```

## Atualizar as souces list em /etc/apt/source.list

## Instalação de programas essenciais

```sh
apt install
    grub-pc
    git
    bash-completion
    network-manager
    locales
```

> Rode o seguinte comando: '. /etc/bash_completion'

> Rode o seguinte comando: 'dpkg-reconfigure locales'

## Intalação do Kernel

```sh
apt install linux-image-amd64
```

## Configuração do grub

```sh
grub-install /dev/sdc
update-grub
```

## Alterar a senha do root

passwd

## Criar usuário do sistema

adduser <nome-usuario>

## Gerar fstab

fora do chroot intale o arch-install-scripts para poder usar o 'genfstab'

com usuário root:
genfstab -U /mnt > /mnt/etc/fstab


## Variável  PS1

Coloque essa linha no arquivo .bashrc do su usuário:
```sh
PS1='\[\e[1;31m\]\342\224\214\342\224\200\[\e[1;31m\][\[\e[1;34m\]\u\[\e[1;37m\]@\[\e[1;1;34m\]\h\[\e[1;31m\]]\[\e[1;31m\]\342\224\200\[\e[1;31m\][\[\e[1;34m\]\w\[\e[1;31m\]]\[\e[1;31m\]\342\224\200[\[\e[1;37m\]\t\[\e[1;31m\]]\n\[\e[1;31m\]\342\224\224\342\224\200\342\224\200\342\225\274\[\e[1;37m\] \$ \[\e[0m\]'
```

Coloque a seguinte linha dentro do arquivo .bashrc em /home/root:
```sh
PS1='\[\e[1;34m\]\342\224\214\342\224\200\[\e[1;34m\][\[\e[31m\]\u\[\e[1;37m\]@\[\e[1;34m\]\h\[\e[1;34m\]]\[\e[1;34m\]\342\224\200\[\e[1;34m\][\[\e[31m\]\w\[\e[1;34m\]]\[\e[1;34m\]\342\224\200[\[\e[1;37m\]\t\[\e[1;34m\]]\n\[\e[1;34m\]\342\224\224\342\224\200\342\224\200\342\225\274\[\e[1;37m\] \$ \[\e[0m\]'
```

Para consultar mais tipos de personalização da variável PS1 basta conferir esse
vídeo do Kretcheu:
https://www.youtube.com/watch?v=oWJqca3D4YE

O arquivo que ele se refere atualmente (18-02-2024) está sob a URL:
https://salsa.debian.org/kretcheu/devel/-/raw/master/prompt

---

## Problemas comuns 

### Sistema somente leitura
provavelmente nao foi criado o arquivo fstab, use o programa genfstab para gerar.

Você pode testar o sistema ajustando pela tela do grub, masta apertar "e" no momento de selecionar o boot e
onde estiver "ro quiet" altere para "rw quiet", isso vai permitir vc usar o sistema, mas para funcionar ao reiniciar
você precisa alterar o arquivo /etc/default/grub e trocar onde estiver "quiet" por "quiet rw".
Mas você não terá esse problema se gerar o fstab.

---

## Links úteis

Plataforme de vídeos em código livre, alternativa ao YouTube:
https://invidious.slackjeff.com.br/feed/popular
