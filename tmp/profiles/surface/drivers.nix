{...}: {
  imports = [
    ../../modules/drivers/amd-drivers.nix
    ../../modules/drivers/intel-drivers.nix
    ../../modules/drivers/local-hardware-clock.nix
    ../../modules/drivers/nvidia-drivers.nix
    ../../modules/drivers/nvidia-prime-drivers.nix
    ../../modules/drivers/vm-guest-services.nix
  ];
}
