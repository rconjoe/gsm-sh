#!/bin/bash

cd ..
mkdir gs
cd gs
sudo apt update
sudo apt install tuned htop
sudo dpkg --add-architecture i386; sudo apt update; sudo apt install mailutils postfix curl wget file tar bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux lib32gcc1 libstdc++6 lib32stdc++6 steamcmd
wget -O linuxgsm.sh https://raw.githubusercontent.com/rconjoe/LinuxGSM/master/linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh csgoserver
./csgoserver auto-install

echo "Upon successful install, run ./csgoserver ul to add your packages to the mod-install list."
