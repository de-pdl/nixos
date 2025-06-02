{
  description = "Experience the life of others but
                 don't forget to create your own";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nvf.url = "github:notashelf/nvf";
    stylix.url = "github:danth/stylix/release-25.05";
  };

  outputs = {nixpkgs, ...} @ inputs: let
    username = "ayush";
  in {
    nixosConfigurations = {
      surface = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {
          inherit inputs;
          inherit username;
          host = "surface";
          profile = "amd";
        };
        modules = [./profiles/surface];
      };
    };
  };
}
