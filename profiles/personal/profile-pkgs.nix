{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    google-chrome
    discord
    obsidian

    spotify

    remmina
    bitwarden-desktop
    teams-for-linux

    networkmanagerapplet

    bambu-studio

    appimage-run # Needed For AppImage Support

    docker-compose # Allows Controlling Docker From A Single File
    #docker

    file-roller # Archive Manager
    gedit # Simple Graphical Text Editor
    lolcat # Add Colors To Your Terminal Command Output
    ncdu # Disk Usage Analyzer With Ncurses Interface

    nixfmt-rfc-style # Nix Formatter
    pavucontrol # For Editing Audio Levels & Devices

    socat # Needed For Screenshots

    xournalpp
    sage

    qutebrowser

    quickemu
  ];

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };
}
