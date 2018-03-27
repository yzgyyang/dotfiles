#!/bin/sh -x

ln -nsf ${PWD}/vimrc ${HOME}/.vimrc
ln -nsf ${PWD}/zshrc ${HOME}/.zshrc
ln -nsf ${PWD}/tmux.conf ${HOME}/.tmux.conf
ln -nsf ${PWD}/gitconfig ${HOME}/.gitconfig
mkdir -p ${HOME}/.ssh
ln -nsf ${PWD}/ssh_config ${HOME}/.ssh/config
