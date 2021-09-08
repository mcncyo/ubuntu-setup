#!/bin/bash


./install.sh

#install gui programs	


echo "install vscode"
sudo snap install --classic code
echo "done"

echo "install terminator"
sudo apt-get install -y terminator
echo "done"

echo "install cherrytree"
mkdir ~/tmp
cd ~/tmp
wget -c https://launchpad.net/~giuspen/+archive/ubuntu/ppa/+files/cherrytree_0.99.40-3_amd64.deb
sudo dpkg -i cherrytree_0.99.40-3_amd64.deb
sudo apt-get install -f
echo "done"


