#!/bin/sh

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
