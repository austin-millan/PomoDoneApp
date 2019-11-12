#!/bin/bash

TEMP_DEB="$(mktemp)" &&
wget -O "$TEMP_DEB" 'https://app.pomodoneapp.com/installers/PomoDoneApp_1.5.1545_amd64.deb' &&
dpkg -i "$TEMP_DEB"
rm -f "$TEMP_DEB"
