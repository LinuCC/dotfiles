setxkbmap -option caps:escape -layout gb
export LANG=en_US.UTF-8

xsetroot -cursor_name left_ptr
xrdb ~/.Xresources &

source ~/scripts/my_methods

# Compositing, like transparency for windows
compton -b &

conky &

feh --bg-fill --randomize ~/pictures/walls/active

# xss-lock -- lock

# dropboxd &

# exec awesome
exec i3
