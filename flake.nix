{
  # Description
  description = "Aam's NixOS Configuration";

  # Inputs
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    pre-commit-hooks = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Outputs
  outputs = {
    self,
    home-manager,
    nixpkgs,
    pre-commit-hooks,
    ...
  } @ inputs: let
    # System architecture
    system = "x86_64-linux";

    # User account name
    user = "aam";

    # Packages set
    pkgs = import nixpkgs {inherit system;};
  in {
    # Set NixOS Configuration for the host
    nixosConfigurations.home = nixpkgs.lib.nixosSystem {
      inherit system;

      # Special args to pass to the modules
      specialArgs = {inherit inputs system user;};

      # Modules
      modules = [
        ./system/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit inputs system user;};

            # Set Home Manager configuration for the user
            users.${user} = import ./user/home.nix;
          };
        }
      ];
    };

    # Checks
    checks.${system} = {
      pre-commit-check = pre-commit-hooks.lib.${system}.run {
        src = ./.;
        hooks = {
          stylua.enable = true;
          alejandra.enable = true;
        };
      };
    };

    # Devshells
    devShells.${system}.default = pkgs.mkShell {
      inherit (self.checks.${system}.pre-commit-check) shellHook;

      # Build inputs
      buildInputs = self.checks.${system}.pre-commit-check.enabledPackages ++ (with pkgs; [nixd lua-language-server]);
    };
  };
}
