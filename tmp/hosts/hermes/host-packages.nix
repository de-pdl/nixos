{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    google-chrome
    discord
    obsidian
    spotify
    remmina
    bitwarden-desktop
    python313Packages.dbus-python #check to remove
    dbus #check to remove
    #citrix_workspace
    nextcloud-client
  ];
  boot.initrd.systemd.dbus.enable = true; #check to remove
}
