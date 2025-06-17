{
  profile,
  pkgs,
  lib,
  ...
}: let
  inherit
    (import ../../profiles/${profile.name}/variables.nix {inherit pkgs;})
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

    hyprland.enable = profile.guiEnable; #change this to depend on gui config
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
      gping

      profile.terminalMux
      profile.textEditor
      profile.terminalFileManager
    ];

    guiPkgs = lib.optionalAttrs profile.guiEnable [
      profile.terminal
      profile.gtextEditor
      profile.fileManager
      profile.browser
    ];
  in
    fixedPkgs ++ guiPkgs;
}
