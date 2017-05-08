#!/bin/sh
# PDF rotation nautilus extension

# if nautilus present, install nautilus-actions
command -v nautilus >/dev/null 2>&1 && sudo apt-get -y install nautilus-actions

# main packages installation
sudo apt-get -y install texlive-extra-utils

# show icon in menus
gsettings set org.gnome.desktop.interface menus-have-icons true

# install icons
sudo wget --header='Accept-Encoding:none' -O /usr/share/icons/pdf-menu.png https://github.com/NicolasBernaerts/ubuntu-scripts/raw/master/pdf/icons/pdf-menu.png
sudo wget --header='Accept-Encoding:none' -O /usr/share/icons/pdf-rotate-left.png https://github.com/NicolasBernaerts/ubuntu-scripts/raw/master/pdf/icons/pdf-rotate-left.png
sudo wget --header='Accept-Encoding:none' -O /usr/share/icons/pdf-rotate-right.png https://github.com/NicolasBernaerts/ubuntu-scripts/raw/master/pdf/icons/pdf-rotate-right.png
sudo wget --header='Accept-Encoding:none' -O /usr/share/icons/pdf-rotate-updown.png https://github.com/NicolasBernaerts/ubuntu-scripts/raw/master/pdf/icons/pdf-rotate-updown.png

# main script installation
sudo wget --header='Accept-Encoding:none' -O /usr/local/bin/pdf-rotate https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/pdf/pdf-rotate
sudo chmod +x /usr/local/bin/pdf-rotate

# nautilus action integration
sudo mkdir --parents /usr/share/file-manager/actions
sudo wget --header='Accept-Encoding:none' -O /usr/share/file-manager/actions/pdf-rotate-menu.desktop https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/pdf/pdf-rotate-menu.desktop
sudo wget --header='Accept-Encoding:none' -O /usr/share/file-manager/actions/pdf-rotate-left-action.desktop https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/pdf/pdf-rotate-left-action.desktop
sudo wget --header='Accept-Encoding:none' -O /usr/share/file-manager/actions/pdf-rotate-right-action.desktop https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/pdf/pdf-rotate-right-action.desktop
sudo wget --header='Accept-Encoding:none' -O /usr/share/file-manager/actions/pdf-rotate-updown-action.desktop https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/pdf/pdf-rotate-updown-action.desktop
