#!/bin/bash

echo -e "\n \n \n Installing dependencies...\n \n \n"
sudo apt update
sudo apt -y install tuned htop
yes | sudo dpkg --add-architecture i386; sudo apt update; sudo apt -y install mailutils postfix curl wget file tar bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux lib32gcc1 libstdc++6 lib32stdc++6 steamcmd

echo -e "\n \n \n Downloading LinuxGSM - eFire s3\n \n \n"
wget -O linuxgsm.sh https://raw.githubusercontent.com/rconjoe/LinuxGSM/master/linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh csgoserver
./csgoserver auto-install

echo -e "\n \n \n Upon successful install, run ./csgoserver ul to add your packages to the mod-install list.\n"
