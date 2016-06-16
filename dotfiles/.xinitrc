setxkbmap -option caps:escape -layout gb
export LANG=en_US.UTF-8

xsetroot -cursor_name left_ptr
xrdb ~/.Xresources &

# Compositing, like transparency for windows
# compton -b &
compton &

conky &

setup_walls &

twmnd &

# xss-lock -- lock

# dropboxd &

# exec awesome
exec i3
