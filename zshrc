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

# Initialize thefuck
eval $(thefuck --alias)

# export MANPATH="/usr/local/man:$MANPATH"

# Manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Personal aliases, overriding those provided by oh-my-zsh libs

# interactive copy and move, prompt before overwrite
alias cp='cp -i'
alias mv='mv -i'

# find a file
alias f='find . -name'

# calculate size of files and directories
alias s='du -sh'
alias sall='du -hsx * | sort -rh | head -10'

# git aliases
alias ggpom='git pull origin master'
alias ggpum='git pull upstream master'

# ssh alias to ignore and don't write to known_host
alias issh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

# Wrapper for svn for subcommand aliases
svn() {
  # echo svn-wrapper
  case $1 in
    # svn reset = svn revert --recursive .
    reset)
      shift
      command svn revert --recursive .
      ;;
    clean)
      shift
      command svn cleanup . --remove-unversioned
      ;;
    *)
      command svn "$@";;
  esac
}
