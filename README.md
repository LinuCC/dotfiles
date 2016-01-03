# dotfiles

My personal dotfiles.

## Install

You need GNU `stow` installed.
Just call `./bootstrap.sh` to setup.

## Manual Config

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

==============

No problem future me :P
