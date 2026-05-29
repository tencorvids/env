{
  inputs,
  vars,
  ...
}:
{
  flake.nixosConfigurations.ship-pve2 = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    specialArgs = {
      inherit inputs vars;
    };
    modules = [
      inputs.self.modules.nixos.base
      inputs.home-manager.nixosModules.default
      ./hardware-configuration.nix
      ./home.nix
      ./network.nix
    ];
  };
}
