#!/bin/bash

echo "updating and upgrading apt packages..."
sudo apt update >/dev/null
sudo apt upgrade >/dev/null

#upgrade node with nvm

#upgrade to latest vesrion of python 3
$pyversion = python --version
echo "Updgrade Python? (current version $pyversion)"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) pyenv update >/dev/null
pyenv latest install >/dev/null
pyenv latest global >/dev/null
; break;;
        No ) exit;;
    esac
done


#upgrade to latest version of nodenv

#NPM
echo "Updating npm..."
npm install -g npm@latest >/dev/null
npm update -g >/dev/null


#PIP
echo "upgrading pip..."
pip install --upgrade pip >/dev/null
pip install -U $(pip freeze | awk '{split($0, a, "=="); print a[1]}') >/dev/null

echo "Updated :)"
