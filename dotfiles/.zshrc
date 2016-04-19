# Path to your oh-my-zsh installation.
ZSH=/home/linucc/.oh-my-zsh

# Add ruby-executables to the path
PATH=$HOME/.gem/ruby/2.3.0/bin:$PATH

XKB_DEFAULT_LAYOUT=gb

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git lol archlinux vagrant docker rails extract)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias net="netctl"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source "$HOME/scripts/my_methods"
# source "$HOME/scripts/system_specific"
source "/etc/profile.d/fzf.zsh"
source "$HOME/.rvm/scripts/rvm"

ALTERNATIVE_BRANCH="release-0.13.0-firestarter"
RELEASE_BRANCH="release-0.14.0-aceofspades"

ALTERNATIVE_CLIENT_BRANCH="v0.13.0"
RELEASE_CLIENT_BRANCH="v0.14.0"

alias gcar="git checkout $ALTERNATIVE_BRANCH"
alias gcr="git checkout $RELEASE_BRANCH"
alias gcarc="git checkout $ALTERNATIVE_CLIENT_BRANCH"
alias gcrc="git checkout $RELEASE_CLIENT_BRANCH"
alias gmm="git merge master"
alias gmar="git merge $ALTERNATIVE_BRANCH"
alias gmr="git merge $RELEASE_BRANCH"
alias gmarc="git merge $ALTERNATIVE_CLIENT_BRANCH"
alias gmrc="git merge $RELEASE_CLIENT_BRANCH"
alias bundleofsticks="bundle install"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-railscasts.dark.sh"
# BASE16_SHELL="$HOME/.config/base16-shell/my-codeschool.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'
