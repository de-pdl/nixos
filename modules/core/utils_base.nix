{
  config,
  pkgs,
  ...
}: {
  programs = {
    dconf.enable = true; #gnome config

    hyprland.enable = true; #change this to depend on gui config
    hyprlock.enable = true;

    mtr.enable = true;
    adb.enable = true;
  };

  environment.systemPackages = with pkgs; [
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
  ];
}
