#!/bin/sh

/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2022.02.17_all.deb keyring.deb SHA256:52053550c4ecb4e97c48900c61b2df4ec50728249d054190e8a0925addb12fc6
sudo apt install ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
sudo apt install i3
sudo rm -rf keyring.deb
sudo apt-get install feh
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E3CA1A89941C42E6
wget -qO - https://debian.sur5r.net/i3/keyfile | sudo apt-key add -
