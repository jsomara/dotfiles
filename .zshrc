# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="miloshadzic"
DISABLE_AUTO_TITLE="true"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby taskwarrior)

alias tmux='tmux -2'
source $ZSH/oh-my-zsh.sh
source $HOME/.rvm/scripts/rvm

setopt nocorrectall
setopt nonomatch

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
PATH=$PATH:"/usr/local/heroku/bin" # add heroku toolbelt

# Customize to your needs...
export PATH=$PATH:/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64/bin:/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64/bin:/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64/bin:/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/jomara/.local/bin:/home/jomara/bin:/home/jomara/bin/sbt


PROMPT="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
