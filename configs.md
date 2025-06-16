# Variables Documentation

## Profiles/{Profile}/variables.nix

    - ~/

### Identity

    gitUsername # self-explanatory *string*
    gitEmail # self-explanatory *string*

    timeZone # self-explanatory *string*
    defaultLocale # self-explanatory *string*
    extraLocaleSettings # self-explanatory *string*
        - ~/modules/core/time.nix

### Service Variables

    smbEnable # to enable SMB mount *boolean*
        - ~/modules/core/services.nix    

    tailscaleEnable # to enable tailscale *boolean*
    sshdEnable # to enable openssh *boolean*
        - ~/modules/core/network.nix

### Account Variables

    sudoNoPswd # sudo without password for user *boolean*
        - ~/modules/core/users.nix

    guiEnable # CLI only or with GUI *boolean*
        - GUI is GUI + CLI otherwise CLI is just CLI
        - enable GUI or CLI {its for like servers or personal use}

### CLI Variables / Pkgs

    installs 
        : terminalMux - tmux - manage through home
        : textEditor - nvim - manage through home
        : terminalFileManager - yazi - manage through home
            - let it either be a pkg from nix
            - or "null"

    terminalMux # terminal multiplexer *string*
    textEditor # terminal texteditor *string*
    terminalFileManger # terminal file manager *string*

### GUI Variables / Pkgs

    [Important Note: I have yet to configure this
    properly so when I get to fixing this I will
    do that but I want to fix CLI and other items
    first :) peace out for a year {maybe less <3}]

    defaultGUIapp1 # must have gui items *string*
    defaultGUIapp2 # must have gui items *string*
    defaultGUIapp3 # must have gui items *string*
        - let it either be a pkg from nix
        - or "null"

    terminal # terminal emulator *string*
    gtextEditor # text editor with gui *string*
    fileManager # file manager *string* {move thunarEnable}

    browser # default browser *string*
    thunarEnable # enable thunar *boolean*


    stylixImage # background for stylix *path*
    clock24h # waybar clock setting *boolean*

    waybarChoice # waybar config *path*
    animChoice # hyprland animation config *path*

## Machines/{Machine}/variables.nix

    - ~ /

### Hardware Service Variables

    printEnable # to enable printing from this machine *boolean*
    bluetoothEnable # to enable bluetooth from this machine *boolean*
        - ~/modules/core/services.nix

### Key Layout

    keyboardLayout # self-explanatory *string*
        - {somewhere in wayland} # to do
    consoleKeyMap # self-explanatory *string*
        - ~/modules/core/devices.nix

### Extra Drivers

    ~tbd~

> This documents list the various options / explanations for variables.nix and
> will also list what files are calling what variables

How to Read this Document

## Document Name / Location

### General Collection Name

    variablename # explanation *data type*
        - path where the variable is used
        - or more explanation
