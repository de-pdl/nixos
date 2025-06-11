{inputs, ...}: {
  imports = [
    ../../modules/core/boot.nix
    ../../modules/core/flatpak.nix
    ../../modules/core/fonts.nix
    ../../modules/core/greetd.nix
    ../../modules/core/hardware.nix
    ../../modules/core/network.nix
    ../../modules/core/nfs.nix
    ../../modules/core/nh.nix
    ../../modules/core/packages.nix
    ../../modules/core/printing.nix
    ../../modules/core/security.nix
    ../../modules/core/services.nix
    ../../modules/core/starfish.nix
    ../../modules/core/steam.nix
    ../../modules/core/stylix.nix
    ../../modules/core/syncthing.nix
    ../../modules/core/system.nix
    ../../modules/core/thunar.nix
    ../../modules/core/user.nix
    ../../modules/core/virtualisation.nix
    ../../modules/core/xserver.nix
    ../../modules/core/cifs.nix
    inputs.stylix.nixosModules.stylix
  ];
}
