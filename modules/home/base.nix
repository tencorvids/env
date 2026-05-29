{ inputs, ... }:
{
  flake.modules.homeManager.base = {
    home.stateVersion = "24.11";
    imports = with inputs.self.modules.homeManager; [
      core
      pkgs_settings
      user
    ];
  };
}
