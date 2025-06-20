{
  pkgs,
  profile,
  ...
}: {
  boot = {
    loader.systemd-boot.enable = true;

    # if on multi-os make it false and handle updates personally
    loader.efi.canTouchEfiVariables = true;

    kernelPackages = pkgs.linuxPackages_latest;
    initrd.kernelModules = ["xhci_pci" "ahci"];
  };
  services.displayManager.ly.enable = true;
}
