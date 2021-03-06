#! /bin/zsh

# Create directories so that stow links the files in them, not the whole
# directories.

[ -d ~/bin ] || mkdir -p ~/bin

[ -d ~/mail/linucc ] || mkdir -p ~/mail/linucc
[ -d ~/mail/ernst_linucc ] || mkdir -p ~/mail/ernst_linucc
[ -d ~/mail/personal ] || mkdir -p ~/mail/personal
[ -d ~/mail/bl ] || mkdir -p ~/mail/bl

[ -d ~/mail/.notmuch/hooks ] || mkdir -p ~/mail/.notmuch/hooks

[ -d ~/pictures/icons ] || mkdir -p ~/pictures/icons

[ -d ~/.sup ] || mkdir -p ~/.sup
[ -d ~/.sup/hooks ] || mkdir -p ~/.sup/hooks

[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
[ -d ~/.config/nvim/colors ] || mkdir -p ~/.config/nvim/colors
[ -d ~/.config/dein.nvim ] || mkdir -p ~/.config/dein.nvim

[ -d ~/.config/twmn ] || mkdir -p ~/.config/twmn

[ -d ~/.config/neofetch ] || mkdir -p ~/.config/neofetch

[ -d ~/code/python ] || mkdir -p ~/code/python
[ -d ~/code/shell ] || mkdir -p ~/code/shell
[ -d ~/code/shell/fzf-extras ] || mkdir -p ~/code/shell/fzf-extras
[ -d ~/code/shell/i3 ] || mkdir -p ~/code/shell/i3

# Manually link gitignore since stow ignores it
[ -f ~/.gitignore ] || ln -s .dot/dotfiles/.gitignore ~/.gitignore

stow dotfiles -t ~
