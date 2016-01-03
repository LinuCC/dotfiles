#! /bin/zsh

[ -d ~/mail/personal ] || mkdir -p ~/mail/personal
[ -d ~/mail/bl ] || mkdir -p ~/mail/bl

stow dotfiles -t ~
