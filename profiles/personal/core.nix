{inputs, ...}: {
  imports = [
    ../../modules/core
    inputs.stylix.nixosModules.stylix
  ];
}
