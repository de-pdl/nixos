# modules/core/devices.nix
{machine, ...}: let
  inherit
    (import ../../machines/${machine}/variables.nix)
    consoleKeyMap
    ;
in {
  #udev is enabled by default
  services.udev.enable = true;
  #environment.systemPackages = with pkgs; [ e2fsprogs btrfs-progs xfsprogs ];
  #fileSystems."/".device = "/dev/disk/by-label/NIXOS";

  console.keyMap = consoleKeyMap;
}
