#!/bin/bash


./install.sh

#install gui programs	


echo "install vscode"
sudo snap install --classic code
echo "done"

echo "install terminator"
sudo add-apt-repository ppa:mattrose/terminator
sudo apt-get update
sudo apt-get install terminator
echo "done"

