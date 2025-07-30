{
  profile,
  pkgs,
  lib,
  ...
}: {
  programs = {
    dconf.enable = true; #gnome config

    hyprland.enable = profile.guiEnable; #change this to depend on gui config
    hyprlock.enable = true;

    mtr.enable = true;
    adb.enable = true;
  };

  environment.systemPackages = with pkgs; let
    fixedPkgs = [
      brightnessctl
      docker-compose
      duf
      htop
      unrar
      unzip
      usbutils
      wget
      coreutils
      findutils
      ripgrep
      bash
      gping
      font-awesome

      ffmpeg
      jq
      poppler
      fd
      fzf
      zoxide
      resvg
      imagemagick

      profile.terminalMux
      profile.textEditor
      profile.terminalFileManager
    ];

    guiPkgs =
      if profile.guiEnable
      then [
        profile.terminal
        profile.gtextEditor
        profile.fileManager
        profile.browser
      ]
      else [];
  in
    fixedPkgs ++ guiPkgs;
}
