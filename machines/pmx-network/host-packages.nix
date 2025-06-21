{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    socat
  ];
  boot.initrd.systemd.dbus.enable = true; #check to remove
}
