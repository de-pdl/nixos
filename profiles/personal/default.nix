{
  machine,
  pkgs,
  ...
}: {
  imports = [
    ../../machines/${machine}
    ./core.nix
    ./profile-pkgs.nix
    ./drivers.nix
    #./home.nix
  ];

  drivers.amdgpu.enable = true;
  drivers.nvidia.enable = false;
  drivers.nvidia-prime.enable = false;
  drivers.intel.enable = false;
  vm.guest-services.enable = false;

  fonts.fontconfig.enable = true;
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  # android
  virtualisation.waydroid.enable = false;
}
