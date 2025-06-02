{host, ...}: let
  inherit (import ../../hosts/${host}/variables.nix) enableNFS;
in {
  services = {
    rpcbind.enable = enableNFS;
    nfs.server.enable = enableNFS;
  };
  fileSystems."/mnt/personal" = {
    device = "192.168.86.22/ayush";
    fsType = "cifs";
  };
}
