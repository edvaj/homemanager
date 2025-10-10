{
  inputs = {
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager, nvf, ... }: let
    system = "x86_64-linux";
  in {
    # For Home Manager commands using --flake .#goat
    homeConfigurations.goat = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = { inherit self;};
      modules = [ 
        nvf.homeManagerModules.default
        ./home.nix
      ];
    };

    # For compatibility with activation packages under packages.x86_64-linux
    packages.${system}.homeConfigurations.goat = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = { inherit self; };
      modules = [ ./home.nix ];
    };
  };
}
