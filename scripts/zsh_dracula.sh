#!/bin/bash -x

rm -rf /tmp/dracula-zsh
git clone https://github.com/dracula/zsh.git /tmp/dracula-zsh
mv /tmp/dracula-zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme
rm -rf /tmp/dracula-zsh
