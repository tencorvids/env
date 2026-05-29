{ ... }:
{
  flake.modules.nixos.user =
    { pkgs, vars, ... }:
    {
      time.timeZone = vars.timeZone;
      users.users.${vars.username} = {
        isNormalUser = true;
        description = "${vars.firstName} ${vars.lastName}";
        extraGroups = [
          "networkmanager"
          "wheel"
          "docker"
        ];
        shell = pkgs.zsh;
        initialPassword = "changeme";
      };

      programs.zsh.enable = true;
    };
}
