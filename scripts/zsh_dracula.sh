#!/bin/sh -x

rm -rf /tmp/dracula-zsh
rm -rf ~/.oh-my-zsh/themes/dracula.zsh-theme
git clone https://github.com/dracula/zsh.git /tmp/dracula-zsh
cp /tmp/dracula-zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme
rsync -a /tmp/dracula-zsh/lib/ ~/.oh-my-zsh/themes/lib
rm -rf /tmp/dracula-zsh
