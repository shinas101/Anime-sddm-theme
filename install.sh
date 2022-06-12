#!/bin/bash
sudo cp -r Itachi /usr/share/sddm/themes/
sudo sed -i "s/^Current=.*/Current=Itachi/g" /etc/sddm.conf.d/theme.conf
sudo sed -i "s/^Current=.*/Current=Itachi/g" /etc/sddm.conf
echo "Theme Installed successfully"
