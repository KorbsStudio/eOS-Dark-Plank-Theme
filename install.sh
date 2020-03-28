#!/usr/bin/env bash

read -rp "Do you want to install this theme? [Y/n] " response

case "$response" in
    [yY][eE][sS]|[yY]|"")
        echo "Installing theme..."
        mkdir -p "$HOME"/.local/share/plank/themes
        cp -Ri eOS-Dark "$HOME"/.local/share/plank/themes
        echo "Done"
        exit 0
        ;;
    *)
        echo "Invalid input"
        exit 1
        ;;
esac
