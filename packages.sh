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
pacaur -S ranger poppler libcaca atool mediainfo pathon-chardet
pacaur -S rofi-git
pacaur -S fzf
pacaur -S fzf-extras
pacaur -S the_silver_searcher

pacaur -S neovim python-neovim
pacaur -S offlineimap alot notmuch afew-git pass

pacaur -S autoenv-git

pacaur -S firefox chromium spotify

# Noicer diffs to look at
npm i -g diff-so-fancy

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
