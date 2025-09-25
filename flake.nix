{
  description = "Experience the life of others but
                 don't forget to create your own";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    #nvf.url = "github:notashelf/nvf/";
    stylix.url = "github:danth/stylix/release-25.05";
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    nixos-hardware,
    ...
  } @ inputs: {
    nixosConfigurations = {
      surface = let
        system = "x86_64-linux";
        profileName = "personal";
        username = "ayush";
        machine = "surface";
      in
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs username machine;
            profile = let
              pkgs = import nixpkgs {
                inherit system;
                config.allowUnfree = true;
              };
            in
              (import ./profiles/${profileName}/variables.nix {inherit pkgs;}) // {name = profileName;};
          };
          modules = [
            ./profiles/${profileName}
            nixos-hardware.nixosModules.microsoft-surface-laptop-amd
          ];
        };

      network = let
        system = "x86_64-linux";
        profileName = "network-manager";
        username = "ayush";
        machine = "pmx-network";
      in
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs username machine;
            profile = let
              pkgs = import nixpkgs {inherit system;};
            in
              (import ./profiles/${profileName}/variables.nix {inherit pkgs;}) // {name = profileName;};
          };
          modules = [
            ./profiles/${profileName}
          ];
        };
    };
  };
}
