while true; do
    volume=$(awk -F"[][]" '/Right:/ { print $2 }' <(amixer sget Master))
    xsetroot -name "$volume       $(date)"
done &
xrandr --output DP-1 --mode 1280x1024 --right-of DVI-D-0 --output HDMI-0 --mode 1280x1024 --left-of DVI-D-0
feh --bg-scale --xinerama-index 0 /home/cj/backgrounds/wallpaper.jpg
picom -b
exec dwm
