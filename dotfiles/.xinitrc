setxkbmap -option caps:escape -layout gb
export LANG=en_US.UTF-8

xsetroot -cursor_name left_ptr
xrdb ~/.Xresources &

# Compositing, like transparency for windows
compton -b &

feh --bg-fill --randomize ~/pictures/walls/active

dropboxd &

# exec awesome
exec i3
