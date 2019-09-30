#! /bin/bash
# Install Atom

echo -e "\n\nInstall Atom\n"
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

# Error Xlib: extension "XInputExtension" missing on display ":1".
# https://www.oipapio.com/question-40345
