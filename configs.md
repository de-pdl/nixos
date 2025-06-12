# Variables Documentation

## Profiles/{Profile}/variables.nix

    - ~/

### Identity

    gitUsername # self-explanatory *string*
    gitEmail # self-explanatory *string*

    timeZone # self-explanatory *string*
    defaultLocale # self-explanatory *string*
    extraLocaleSettings # self-explanatory *string*

### Service Variables

    nfsEnable # to enable NFS Service *boolean*
    SMBenable # to enable SMB mount *boolean*
    sshdEnable # to enable openssh *boolean*

### Account Variables

    sudoNoPswd # sudo without password for user *boolean*
    interfaceStyle # CLI only or with GUI *string*
        - "GUI" | "CLI" 
        - GUI is GUI + CLI otherwise CLI is just CLI

### CLI Variables

    defaultCLIapp1 # must have cli items *string*
    defaultCLIapp2 # must have cli items *string*
    defaultCLIapp3 # must have cli items *string*
        - let it either be a pkg from nix
        - or "null"

    terminal # default tty *string*

### GUI Variables

    [Important Note: I have yet to configure this
    properly so when I get to fixing this I will
    do that but I want to fix CLI and other items
    first :) peace out for a year {maybe less <3}]

    defaultGUIapp1 # must have gui items *string*
    defaultGUIapp2 # must have gui items *string*
    defaultGUIapp3 # must have gui items *string*
        - let it either be a pkg from nix
        - or "null"

    brower # default browser *string*
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

### Key Layout

    keyboardLayout # self-explanatory *string*
    consoleKeyMap # self-explanatory *string*

### Extra Drivers

> This documents list the various options / explanations for variables.nix and
> will also list what files are calling what variables How to Read this Document

## Document Name / Location

### General Collection Name

    variablename # explanation *data type*
        - path where the variable is used
        - or more explanation
