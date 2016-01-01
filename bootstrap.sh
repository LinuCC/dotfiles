#! /bin/zsh

# Create some directories for mutt
[ -d ~/.mutt/caching ] || mkdir -p ~/.mutt/caching
[ -d ~/.mutt/caching ] || mkdir -p ~/.mutt/certificates
[ -f ~/.mutt/aliases ] || touch ~/.mutt/aliases

stow dotfiles -t ~
