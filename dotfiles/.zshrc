# Path to your oh-my-zsh installation.
ZSH=/home/linucc/.oh-my-zsh

# Add ruby-executables to the path
export PATH=$HOME/.gem/ruby/2.5.0/bin:$PATH

source ~/bin/git-prompt.sh

XKB_DEFAULT_LAYOUT=gb



POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_FOREGROUND="black"
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir_writable  vcs newline dir)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicator background_jobs time disk_usage ram)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicator background_jobs time)
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_USER_ICON="\uF415" # 
POWERLEVEL9K_ROOT_ICON="\uF09C"
POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
#POWERLEVEL9K_VCS_GIT_ICON='\uF408 '
#POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408 '

# source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh-custom"
# ZSH_THEME="gnzh-custom"
# ZSH_THEME="trapd00r"
# ZSH_THEME="spaceship"
# ZSH_THEME="powerlevel9k/powerlevel9k"

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
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git lol archlinux vagrant docker rails extract docker-compose docker-compose-status)

# User configuration

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
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

# export HISTSIZE=50000
# export SAVEHIST=50000

alias net="netctl"

CODE="$HOME/code"
SCRIPTS="$CODE/shell"

source '/usr/share/undistract-me/long-running.bash'

[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
# source "$SCRIPTS/my_methods"
source "$SCRIPTS/cmdhelpers"
# source "$HOME/scripts/system_specific"
# source "/etc/profile.d/fzf.zsh"
source "$HOME/.rvm/scripts/rvm"
source "$SCRIPTS/fzf-extras/fzf-extras.bash"
source "$SCRIPTS/fzf-extras/fzf-extras.zsh"
source "$SCRIPTS/lutz"
source "$SCRIPTS/fdc_helpers"
source "$SCRIPTS/tasks"

ALTERNATIVE_BRANCH="release-0.18.0-bubblegum-tate"
RELEASE_BRANCH="release-0.19.0-white-unicorn"

ALTERNATIVE_CLIENT_BRANCH="v0.18.0"
RELEASE_CLIENT_BRANCH="v0.19.0"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

unalias gcd

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
# alias gcd="git checkout development"
# alias gmd="git merge development"

alias dcup='docker-compose up'
alias dcb='docker-compose build'
alias dcrm='docker-compose rm'
alias dcps='docker-compose ps'
alias dcstop='docker-compose stop'
alias dcrestart='docker-compose restart'
alias gdc="git diff --cached"
alias gdcw="git diff --cached --word-diff"

alias yt="yarn test"
alias yb="yarn build"
alias ys="yarn storybook"

alias arrrgh='sudo $(fc -ln -1)'
alias please='sudo $(fc -ln -1)'
alias l='exa --long --git'
alias ls=exa
alias ll='exa --long --git'
alias lt='exa --long --git --tree'

alias tws='timew sum :ids'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-railscasts.dark.sh"
# BASE16_SHELL="$HOME/.config/base16-shell/base16-atelierdune.dark.sh"
# BASE16_SHELL="$HOME/.config/base16-shell/base16-codeschool.dark.sh"
# BASE16_SHELL="$HOME/.config/base16-shell/my-codeschool.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'

# Overrides FZF shortcut, do I want that?
# source /usr/share/doc/mcfly/mcfly.bash

export BL_GEM_PATH="$HOME/code/brandslisten/bl"
export BL_STYLEGUIDE_GEM_PATH="$HOME/code/brandslisten/bl_styleguide"

# Disable scaling of font for alacritty
export WINIT_HIDPI_FACTOR=1

export EDITOR=nvim

eval $(thefuck --alias)

function easy_input {
  unsetopt nomatch
}

neofetch

source /usr/share/autoenv-git/activate.sh

notify_when_long_running_commands_finish_install

