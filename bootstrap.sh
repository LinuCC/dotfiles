#! /bin/zsh

[ -d ~/mail/personal ] || mkdir -p ~/mail/personal
[ -d ~/mail/bl ] || mkdir -p ~/mail/bl

[ -d ~/.sup ] || mkdir -p ~/.sup

# Manually link gitignore since stow ignores it
[ -f ~/.gitignore ] || ln -s .gitignore .dot/dotfiles/.gitignore

stow dotfiles -t ~
