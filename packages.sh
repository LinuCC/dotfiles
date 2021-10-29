##
# Some setup
##

# Make sure sudo is installed

sudo pacman -S git tig

# Install yay, then continue
echo "Please install yay and edit the source :P"

yay -S python

yay -S ruby
yay -S npm
yay -S zsh
yay -S zsh-syntax-highlighting

# Goodies
yay -S ranger poppler libcaca atool mediainfo pathon-chardet unzip
yay -S twmn feh zathura zathura-pdf-poppler
yay -S fzf
yay -S fzf-extras
yay -S the_silver_searcher
yay -S xclip xsel xdotool

yay -S neovim python-neovim openssh
yay -S offlineimap alot notmuch afew-git pass msmtp

yay -S autoenv-git

yay -S xorg xorg-xinit acpi lm_sensors bc
yay -S compton unclutter i3 i3blocks neofetch thefuck scrot
yay -S alsa-utils playerctl
yay -S firefox chromium spotify termite
yay -S otf-fontawesome ttf-iosevka-term otf-hasklig ttf-monoid ttf-input

# Output highlighting
sudo pacman -S grc

# Awesome file cleaning
yay -S ncdu

yay -S dialog

# Noicer diffs to look at
npm i -g diff-so-fancy

# Bluetooth
yay -S blueman
echo "Dont forget to 'systemctl enable bluetooth'"

# dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.config/nvim/bundles

# Run NeoVim inbetween
echo "Please run neovim and edit the source :P"

# YouCompleteMe (After running Neovim for the first time)
cd ~/.config/nvim/bundles/repos/github.com/valloric/youcompleteme
python install.py
cd -1
