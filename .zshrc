# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set name of the theme to load. "random" loads a random theme each time.
ZSH_THEME="dracula"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Plugins (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor
export EDITOR='vim'

# export MANPATH="/usr/local/man:$MANPATH"

# Manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Personal aliases, overriding those provided by oh-my-zsh libs

# interactive copy and move, prompt before overwrite
alias cp='cp -i'
alias mv='mv -i'

# find a file
alias f='find . -name'
