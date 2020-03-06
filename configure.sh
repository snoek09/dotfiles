#!/bin/sh

# force alt + tab to switch only on current workspace
gsettings set org.gnome.shell.app-switcher current-workspace-only true

# disable bluetooth
sudo install -b -m 755 /dev/stdin /etc/rc.local << EOF
#!/bin/sh
rfkill block bluetooth
exit 0
EOF
