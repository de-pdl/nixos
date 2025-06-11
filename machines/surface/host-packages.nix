{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    vim
  ];
  boot.initrd.systemd.dbus.enable = true; #check to remove
}
