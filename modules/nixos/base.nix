{ inputs, ... }:
{
  flake.modules.nixos.base = {
    system.stateVersion = "25.11";
    imports = with inputs.self.modules.nixos; [
      nix_settings
      pkgs_settings
      user
      network
      ssh
    ];
  };
}
