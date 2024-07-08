#!/bin/bash
# Needed for all installers
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git unzip

sudo apt install -y \
  build-essential pkg-config autoconf bison clang \
  libssl-dev libreadline-dev zlib1g-dev libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev libjemalloc2 \
  libvips imagemagick libmagickwand-dev mupdf mupdf-tools \
  redis-tools sqlite3 libsqlite3-0 libsqlite3-dev git-core libxml2-dev libmysqlclient-dev libxslt1-dev libcurl4-openssl-dev \
  software-properties-common

# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run desktop installers
for installer in $PWD/installers/*.sh; do
  echo $installer
  source $installer
done

sudo apt update

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

# Logout to pickup changes
gnome-session-quit --logout --no-prompt
