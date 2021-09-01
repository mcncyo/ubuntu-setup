#!/bin/bash


./install.sh

#install gui programs	


echo "install vscode"
sudo snap install --classic code
echo "done"

echo "install terminator"
sudo apt-get install -y terminator
echo "done"

