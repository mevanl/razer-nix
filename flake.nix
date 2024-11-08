{
  description = "Evan's Razer blade 2020 laptop NixOS Config";

  inputs = {
    ## I will use unstable by default, but have stable if needed ##
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    stable.url =  "github:nixos/nixpkgs/nixos-24.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  }; 

  outputs = { self, nixvim, ... }@inputs:
  let 
    system = "x86_64-linux";
    pkgs = import inputs.nixpkgs { inherit system; config.allowUnfree = true; };
    pkgs-stable = inputs.stable { inherit system; config.allowUnfree = true; };
  in 
  {
    nixosConfigurations = {
      nixos = inputs.nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs system pkgs pkgs-stable; };
        modules = [ ./nixos/configuration.nix ];
      };
    };

    homeConfigurations = {
      evan = inputs.home-manager.lib.homeManagerConfiguration {
        pkgs = inputs.nixpkgs.legacyPackages.${system};
        modules = [ ./home-manager/home.nix nixvim.homeManagerModules.nixvim ];
        extraSpecialArgs = { inherit pkgs pkgs-stable; };
      };
    };
  };
}
