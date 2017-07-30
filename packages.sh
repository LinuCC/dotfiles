##
# Some setup
##

# Make sure sudo is installed

sudo pacman -S git tig

# Install pacaur, then continue
echo "Please install pacaur and edit the source :P"
exit 1

pacaur -S python

pacaur -S ruby
pacaur -S npm

# Goodies
pacaur -S ranger poppler libcaca atool mediainfo pathon-chardet unzip
pacaur -S rofi-git twmn-git feh zathura zathura-pdf-poppler
pacaur -S fzf
pacaur -S fzf-extras
pacaur -S the_silver_searcher
pacaur -S xclip xsel xdotool

pacaur -S neovim python-neovim openssh
pacaur -S offlineimap alot notmuch afew-git pass msmtp

pacaur -S autoenv-git

pacaur -S xorg xorg-xinit acpi lm_sensors bc
pacaur -S compton unclutter i3 i3blocks ttf-input neofetch thefuck scrot
pacaur -S alsa-utils playerctl
pacaur -S firefox chromium spotify termite otf-fontawesome ttf-iosevka-term

# Awesome file cleaning
pacaur -S ncdu

pacaur -S dialog

# Noicer diffs to look at
npm i -g diff-so-fancy

# Bluetooth
pacaur -S blueman
echo "Dont forget to 'systemctl enable bluetooth'"

# dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.config/nvim/bundles

# Run NeoVim inbetween
echo "Please run neovim and edit the source :P"
exit 1

# YouCompleteMe (After running Neovim for the first time)
cd ~/.config/nvim/bundles/repos/github.com/valloric/youcompleteme
python install.py
cd -1
