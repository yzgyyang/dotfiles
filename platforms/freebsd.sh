#!/bin/sh -x

# Install dotfiles
../install_dotfiles

# Bootstrap pkg
env ASSUME_ALWAYS_YES=YES pkg bootstrap

# Update repo and packages
pkg update
pkg upgrade -y

# Install packages
pkg install -y git

# Install utility packages
pkg install -y htop
pkg install -y tmux
pkg install -y sudo

# Install FreeBSD dev packages
pkg install -y portlint
pkg install -y poudriere
pkg install -y docproj

# Install vim and plugins
pkg install -y vim
../scripts/vim_vundle.sh
vim -c 'PluginInstall' -c 'qa!'

# Install zsh and oh-my-zsh
pkg install -y zsh
../scripts/zsh_ohmyzsh.sh
../scripts/zsh_dracula.sh

# Create ports tree
portsnap fetch extract
