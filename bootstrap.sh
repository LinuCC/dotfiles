#! /bin/zsh

[ -d ~/mail/linucc ] || mkdir -p ~/mail/linucc
[ -d ~/mail/ernst_linucc ] || mkdir -p ~/mail/ernst_linucc
[ -d ~/mail/personal ] || mkdir -p ~/mail/personal
[ -d ~/mail/bl ] || mkdir -p ~/mail/bl

[ -d ~/pictures/icons ] || mkdir -p ~/pictures/icons

[ -d ~/.sup ] || mkdir -p ~/.sup
[ -d ~/.sup/hooks ] || mkdir -p ~/.sup/hooks

[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
[ -d ~/.config/nvim/colors ] || mkdir -p ~/.config/nvim/colors
[ -d ~/.config/dein.nvim ] || mkdir -p ~/.config/dein.nvim

[ -d ~/.config/twmn ] || mkdir -p ~/.config/twmn

[ -d ~/.config/neofetch ] || mkdir -p ~/.config/neofetch

# Manually link gitignore since stow ignores it
[ -f ~/.gitignore ] || ln -s .dot/dotfiles/.gitignore ~/.gitignore

stow dotfiles -t ~
