#! /bin/bash
# Install Pycharm

echo -e "\n\nInstall Pycharm\n\n"
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get install ubuntu-make

umake ide pycharm
umake ide pycharm-professional

# To remove pycharm installed via umake
# umake -r ide pycharm
# https://itsfoss.com/install-pycharm-ubuntu/
