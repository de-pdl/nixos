{
  machine,
  pkgs,
  username,
  ...
}: {
  imports = [
    ../../machines/${machine}
    ./core.nix
    ./profile-pkgs.nix
    ./drivers.nix
    #./home.nix
  ];

  drivers = {
    amdgpu.enable = true;
    nvidia.enable = false;
    nvidia-prime.enable = false;
    intel.enable = false;
  };
  vm.guest-services.enable = false;

  fonts.fontconfig.enable = true;
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  # android
  # virtualisation
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["${username}"];
  virtualisation = {
    waydroid.enable = false;
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
  };
  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;
}
