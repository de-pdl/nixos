{
  profile,
  pkgs,
  lib,
  ...
}: let
  inherit
    (import ../../profiles/${profile}/variables.nix {inherit pkgs;})
    guiEnable
    terminalMux
    textEditor
    terminalFileManager
    terminal
    gtextEditor
    fileManager
    browser
    ;
  # fix it in the future
in {
  programs = {
    dconf.enable = true; #gnome config

    hyprland.enable = guiEnable; #change this to depend on gui config
    hyprlock.enable = true;

    mtr.enable = true;
    adb.enable = true;
  };

  environment.systemPackages = with pkgs; let
    fixedPkgs = [
      htop
      docker-compose
      duf
      unrar
      unzip
      usbutils
      wget
      coreutils
      findutils
      ripgrep
      bash

      terminalMux
      textEditor
      terminalFileManager
    ];

    guiPkgs = lib.optionalAttrs guiEnable [
      terminal
      gtextEditor
      fileManager
      browser
    ];
  in
    fixedPkgs ++ guiPkgs;
}
