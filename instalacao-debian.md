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

Default:
```sh
\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$
```

Root:
```sh
\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w #\[\033[00m\]
```

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
