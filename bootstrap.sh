#! /bin/zsh

[ -d ~/mail/personal ] || mkdir -p ~/mail/personal
[ -d ~/mail/bl ] || mkdir -p ~/mail/bl

[ -d ~/pictures/icons ] || mkdir -p ~/pictures/icons

[ -d ~/.sup ] || mkdir -p ~/.sup

# Manually link gitignore since stow ignores it
[ -f ~/.gitignore ] || ln -s .dot/dotfiles/.gitignore ~/.gitignore

stow dotfiles -t ~
