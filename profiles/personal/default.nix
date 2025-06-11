{machine, ...}: {
  imports = [
    ../../machines/${machine}
    ./core.nix
    ./home.nix
    ./profile-pkgs.nix

    ./drivers.nix
  ];

  drivers.amdgpu.enable = true;
  drivers.nvidia.enable = false;
  drivers.nvidia-prime.enable = false;
  drivers.intel.enable = false;
  vm.guest-services.enable = false;
}
