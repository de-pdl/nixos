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
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {nixpkgs, ...} @ inputs: {
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
          };
          modules = [
            ({pkgs, ...}: {
              _module.args = {
                profile = (import ./profiles/${profileName}/variables.nix {inherit pkgs;}) // {name = profileName;};
              };
            })
            ./profiles/${profileName}
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
		};	
          	modules = [
            	({pkgs, ...}: {
              	_module.args = {
                profile = (import ./profiles/${profileName}/variables.nix {inherit pkgs;}) // {name = profileName;};
              	};
            	})
            	./profiles/${profileName}
          	];
	};
      };
  };
}
