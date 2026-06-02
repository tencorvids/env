{ ... }:
let
  nasHost = "10.10.10.10";
  mntPath = "/mnt/tank";
in
{
  fileSystems."${mntPath}/data" = {
    device = "${nasHost}:/mnt/tank/data";
    fsType = "nfs";
    options = [
      "nfsvers=4.2"
      "x-systemd.automount"
      "noauto"
      "_netdev"
      "nofail"
      "hard"
      "timeo=600"
      "retrans=2"
    ];
  };

  fileSystems."${mntPath}/backups" = {
    device = "${nasHost}:/mnt/tank/backups";
    fsType = "nfs";
    options = [
      "nfsvers=4.2"
      "x-systemd.automount"
      "noauto"
      "_netdev"
      "nofail"
      "hard"
      "timeo=600"
      "retrans=2"
    ];
  };
}
