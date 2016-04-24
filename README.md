# dotfiles

My personal dotfiles.

## Install

You need GNU `stow` installed.
Just call `./bootstrap.sh` to setup.

## Manual Config

### ZSH

I use `base16-shell` for some nice colors:
```
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```

### Pass

Use `pass` to store the passwords that arent in the config files.
You need to generate a key with `gnugpg`: `gpg --full-gen-key`.
Then `pass init my-email@domain.com`.

Then you can add passwords with `pass insert <key>`, for example 
`pass insert Mail/personal`.

See [Arch Wiki](https://wiki.archlinux.org/index.php/OfflineIMAP#Using_pass).

### I3

You need `i3blocks` for the top bar to look nice.

The `i3blocks` command needs `playerctl` enabled.
Due to a bug with spotify, install the current `playerctl-git` package.

You also need to install `font-awesome` as a package, so the icons get
correctly displayed.

### Neovim

Install `dein.vim` by running the following (see the 
[Repo](https://github.com/Shougo/dein.vim):

```
 $ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
 $ sh ./installer.sh {specify the installation directory}
```

Also install the package `rsync`.

For `fzf` you need the `the_silver_searcher`(`ag`) installed from your 
favourite package manager.

#### YouCompleteMe

To install the vim-plugin, see its 
[Readme](https://github.com/Valloric/YouCompleteMe).

Notes:

Install it by adding `call dein#add('valloric/youcompleteme')` to the RC-file.
Then cd to the installed directory (for example
`~/.config/dein.vim/repos/github.com/valloric/youcompleteme`) and execute
`./install.sh --racer-complete --tern-complete` (JS and Rust).
Then add an `call dein#update()` to your RC-file, start `nvim`, let it update,
close it and remove the call from the file (Yes yes, this is stupid).

*Todo: find out how to call these functions directly from within neovim*

Also dont forget to `pacaur -S python2-neovim`.


### Ctags

For proper Tags, create a `.ctags`-file in every project with the following
content to exclude project-specific libs:

```
--exclude=node_modules
--exclude=.git
```

Execute `ctags -R -f ./.tags .` in every project-dir you want to use ctags for.

### Emails

Use systemd to autostart `offlineimap`.
Put this in `/etc/systemd/system/offlineimap@.service`:
```
[Unit]
Description=Start offlineimap as a daemon
Requires=network-online.target
After=network.target

[Service]
User=%i
ExecStart=/usr/bin/offlineimap
KillSignal=SIGUSR2
Restart=always

[Install]
WantedBy=multi-user.target
```

Then enable the service.
Problem:
The `pass` command is not able to ask for the password when systemd calls it.

## Cheatsheet'N Stuff

### Neovim

* [`fzf`](https://github.com/junegunn/fzf.vim) is friggin awesome.
* [`multiple cursors`](https://github.com/terryma/vim-multiple-cursors).
* [`easytags`](https://github.com/xolox/vim-easytags).
* [`dein`](https://github.com/Shougo/dein.vim).

#### Shortcuts

* `c-p` - Files
* `c-q` - Tags
* `c-space` - Buffers
* While in any of these searches:
  * `c-x`, `c-v` to split instead of opening a new buffer
* `c-w =` Equalize size of vertically split windows
* `v/foo` Selects everyting until `foo`

#### Commands

Advanced Open File:
```
:e %:h/filename
```
(`%`^= current file, `:h` ^= modifier for its directory)

Buffers:

Its best to just `c-p` to open a new buffer, automatically hides the current
one.

* `:hide` "close" buffer
* `:bd` delete buffer

Random:

* `:Move %<tab>` expands to current filepath

==============

No problem future me :P

