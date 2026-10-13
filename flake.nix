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

    outputs = { self, nixpkgs, home-manager, nvf, ... } @ inputs: let
        system = "x86_64-linux";
    in {
        homeConfigurations.goat = home-manager.lib.homeManagerConfiguration {
            pkgs = nixpkgs.legacyPackages.${system};
            extraSpecialArgs = { inherit self inputs; };
            modules = [ 
                nvf.homeManagerModules.default
                ./home.nix
            ];
        };

        packages.${system}.homeConfigurations.goat = home-manager.lib.homeManagerConfiguration {
            pkgs = nixpkgs.legacyPackages.${system};
            extraSpecialArgs = { inherit self inputs; };
            modules = [ 
                nvf.homeManagerModules.default
                ./home.nix
            ];
        };
    };
}
