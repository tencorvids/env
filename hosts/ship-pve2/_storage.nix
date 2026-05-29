{ ... }:
let
  nasHost = "10.10.10.20";
in
{
  fileSystems."/mnt/nas/tank/data" = {
    device = "${nasHost}:/tank/data";
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

  fileSystems."/mnt/nas/tank/media" = {
    device = "${nasHost}:/tank/media";
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
