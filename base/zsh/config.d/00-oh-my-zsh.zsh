# Path to your oh-my-zsh configuration.
XDG_CONFIG_HOME=${XDG_CONFIG_HOME-$HOME/.config}

ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$XDG_CONFIG_HOME/zsh/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="powerline"
#ZSH_THEME="agnoster"
#ZSH_THEME="ys"
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_COLOR_SCHEME="dark"
DEFAULT_USER="pctao"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras history profiles z rsync)
# work
export JIRA_RAPID_BOARD=true
plugins=($plugins knife jira)
plugins=($plugins sublime tmux)
plugins=($plugins terraform zsh-autosuggestions)
## extended by dots
!!@@plugins
## end of extended by dots

alias sudo='nocorrect sudo'
alias gksu='nocorrect gksu'

A=$(gdate +%s%N)

[[ -s "$ZSH/oh-my-zsh.sh" ]] && source $ZSH/oh-my-zsh.sh
B=$(gdate +%s%N)
echo 'zsh plugin inited for' $(expr \( $B - $A \) / 1000000) 'ms'
