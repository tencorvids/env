{
  inputs,
  self,
  ...
}:
{
  flake.nixosConfigurations.ship_pve1 = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    specialArgs = {
      inherit inputs;
      vars = self.vars.user;
    };
    modules = with inputs.self.modules.nixos; [
      base
      grub_boot
      kernel
      qemu_guest
      virt
      inputs.home-manager.nixosModules.default
      {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.extraSpecialArgs = {
          inherit inputs;
          vars = self.vars.user;
        };
      }
      ./_hardware-configuration.nix
      ./_home.nix
      ./_network.nix
      ./_storage.nix
    ];
  };
}
