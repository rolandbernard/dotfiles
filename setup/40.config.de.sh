#!/bin/bash

# kde config

# i3 config
cat > ~/.config/systemd/user/i3.service <<-END
[Unit]
Description=i3 Window Manager
Wants=plasma-kcminit.service
PartOf=graphical-session.target

[Service]
ExecStart=/usr/bin/i3
Slice=session.slice
Restart=on-failure
END
systemctl --user mask plasma-kwin_x11.service
systemctl --user daemon-reload
systemctl --user add-wants plasma-workspace-x11.target i3.service

