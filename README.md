# ChadOS

## Settings

Edit `hosts/chad-os/settings.nix` before installing (user, groups, disk, partition sizes).

## Install

Boot the NixOS ISO, become root (`sudo -i`), then:

    git clone https://github.com/0xK92JL4/ChadOS.git
    cd ChadOS
    make install

No `make`? Run `sh ./install` instead.
