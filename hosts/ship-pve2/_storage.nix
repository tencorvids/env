{ ... }:
let
  nasHost = "10.10.10.10";
  mntPath = "/mnt/tank";
in
{
  fileSystems."${mntPath}/data/torrent" = {
    device = "${nasHost}:/tank/data/torrent";
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

  fileSystems."${mntPath}/media/movies" = {
    device = "${nasHost}:/tank/media/movies";
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

  fileSystems."${mntPath}/media/tv" = {
    device = "${nasHost}:/tank/media/tv";
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
