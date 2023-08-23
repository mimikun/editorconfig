#!/bin/bash

before_sudo() {
    if ! test "$(
        sudo uname >>/dev/null
        echo $?
    )" -eq 0; then
        exit 1
    fi
}

run_install() {
    sudo cp ./"$1".sh ~/.local/bin/"$1"
}

before_sudo
wget https://raw.githubusercontent.com/mimikun/editorconfig/master/.editorconfig-template -O "$HOME"/.editorconfig-template
run_install editorconfig
