#!/bin/bash

WM=$(wmctrl -m | awk '/^Name: (.*)$/ { print $2 }')

if [ "$HOST_NAME" == "rolandlinux" -a "$VM" == "KWin" ]
then

# kde+i3 config
mkdir -p $HOME/.config/systemd/user
echo "[Unit]
Description=i3 Window Manager
Wants=plasma-kcminit.service
PartOf=graphical-session.target

[Service]
ExecStart=/usr/bin/i3
Slice=session.slice
Restart=on-failure" | tee $HOME/.config/systemd/user/i3.service

systemctl --user mask plasma-kwin_x11.service
systemctl --user daemon-reload
systemctl --user add-wants plasma-workspace-x11.target i3.service

fi

