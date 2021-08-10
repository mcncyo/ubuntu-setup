#!/bin/bash
if [ "$1" = "gui" ]; then
  apt install git
else
  echo "not install"
fi
if [ "$2" = "vbox" ]; then
  apt install vbox
else
  echo "not install vbox"
fi