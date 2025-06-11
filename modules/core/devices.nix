# modules/core/devices.nix
{
  config,
  pkgs,
  ...
}: {
  #udev is enabled by default
  services.udev.enable = true;
  #environment.systemPackages = with pkgs; [ e2fsprogs btrfs-progs xfsprogs ];
  #fileSystems."/".device = "/dev/disk/by-label/NIXOS";
}
