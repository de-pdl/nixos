{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    google-chrome
    discord
    obsidian
    spotify
    remmina
    bitwarden-desktop

    networkmanagerapplet
  ];
}
