{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    google-chrome #browser

    spotify

    remmina
    bitwarden-desktop
    teams-for-linux

    networkmanagerapplet

    appimage-run # Needed For AppImage Support

    docker-compose # Allows Controlling Docker From A Single File
    #docker

    file-roller # Archive Manager
    lolcat # Add Colors To Your Terminal Command Output
    ncdu # Disk Usage Analyzer With Ncurses Interface

    nixfmt-rfc-style # Nix Formatter
    pavucontrol # For Editing Audio Levels & Devices

    socat # Needed For Screenshots

    # education systemPackages
    obsidian # file organisation
    xournalpp # pdf reader
    joplin-desktop # note taker

    sage # matlab alternative {should learn how to use}
    rstudio # excel alternative

    quickemu # # virtualisation
    sticky-notes # sticky-notes
    libreoffice # office alternative (really laggy)
    anki-bin # flash notes
  ];

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };
}
