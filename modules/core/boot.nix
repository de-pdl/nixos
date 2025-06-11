{
  config,
  pkgs,
  ...
}: {
  boot = {
    loader.systemd-boot.enable = true;

    # if on multi-os make it false and handle updates personally
    loader.efi.canTouchEfiVariables = true;

    boot.kernelPackages = pkgs.linuxPackages_latest;
    boot.initrd.kernelModules = ["xhci_pci" "ahci"];
  };
}
