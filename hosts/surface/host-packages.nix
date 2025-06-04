{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    google-chrome
    discord
    obsidian
    spotify
    remmina
    bitwarden-desktop
    python313Packages.dbus-python
    dbus
    #citrix_workspace
  ];
  boot.initrd.systemd.dbus.enable = true;
}
