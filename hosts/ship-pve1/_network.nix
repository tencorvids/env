{ ... }:
{
  networking.hostName = "ship-pve1";
  networking.useDHCP = false;
  networking.interfaces.ens18.ipv4.addresses = [
    {
      address = "10.10.10.11";
      prefixLength = 24;
    }
  ];
  networking.defaultGateway = "10.10.10.1";
  networking.nameservers = [
    "10.10.10.1"
    "1.1.1.1"
    "9.9.9.9"
  ];
}
