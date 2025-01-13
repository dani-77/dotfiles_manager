session=${1:-openbox}
case $session in
  openbox ) exec openbox-session ;;
  dwm )     exec xrdb -merge /home/dani77/.Xresources & exec setxkbmap pt & exec picom & exec sxhkd -c ~/.config/sxhkd/sxhkdrc & exec dunst & exec redshift & exec feh --bg-fill ~/notabug/suckless/dwm-black-white.png & exec slstatus & exec dwm ;;
  xfce4 )   exec xrdb -merge /home/dani77/.Xresources & exec setxkbmap pt & exec picom & exec sxhkd -c ~/.config/sxhkd/sxhkdrc & exec dunst & exec redshift-gtk & exec /usr/bin/octopi-notifier & exec dbus-launch startxfce4 ;;
  * )       exec $1;;
esac
