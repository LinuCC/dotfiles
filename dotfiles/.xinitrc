# setxkbmap -option caps:escape -layout gb
# export LANG=en_US.UTF-8

xsetroot -cursor_name left_ptr
xrdb ~/.Xresources &

autolock &

blueman-applet &

# conky &

setup_walls &

# twmnd &
dunst &

# xss-lock -- lock

# dropboxd &



# Compositing, like transparency for windows
compton --opengl --sw-opti --paint-on-overlay -cCGb -r 10 -o 0.5 -t-12 -i 0.8 &

# Remooove datt mouse
xbanish &

# exec awesome
exec i3

