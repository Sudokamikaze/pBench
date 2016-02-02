#!/bin/bash
echo Welcome to installer of this benchmark!
echo 1 ArchLinux
echo 2 Ubuntu
echo -n "What distro you using(1/2)"
read item
case "$item" in
    eng|1) echo "Stating pacman..."
       sudo pacman -S --needed subversion asciidoc bash bc binutils bzip2 fastjar flex git gcc util-linux gawk intltool zlib make cdrkit ncurses openssl patch perl-extutils-makemaker rsync sdcc unzip wget gettext libxslt boost libusb bin86 sharutils b43-fwcutter findutils
        ;;
    rus|2) echo "Starting APT..."
       sudo apt-get install subversion git g++ libncurses5-dev zlib1g-dev gawk figlet make libssl-dev
        ;;
    *) echo "Ничего не ввели. Ожидание ввода"
            ;;
esac
git clone https://github.com/Pulshen/PulshenWRT_CC.git
cd PulshenWRT*
./scripts/feeds update -a && ./scripts/feeds install -a
make prereq && make menuconfig
echo Done!