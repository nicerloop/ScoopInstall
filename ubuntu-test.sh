#!/bin/sh

# https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu

# Update the list of packages
sudo apt-get update
# Install pre-requisite packages.
sudo apt-get install -y wget apt-transport-https software-properties-common
# Download the Microsoft repository GPG keys
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb
# Delete the the Microsoft repository GPG keys file
rm packages-microsoft-prod.deb
# Update the list of packages after we added packages.microsoft.com
sudo apt-get update
# Install PowerShell
sudo apt-get install -y powershell
# Start PowerShell
# pwsh

sudo apt upgrade
sudo apt install wine
pwsh -c "irm https://raw.githubusercontent.com/nicerloop/ScoopInstall/macos/install.ps1 | iex"
. ~/.bash_aliases
scoop checkup
scoop status
scoop update
scoop bucket add extras
scoop install extras/winmerge
winmergeu .bashrc .bash_aliases
scoop uninstall extras/winmerge
scoop bucket rm extras
scoop uninstall scoop
