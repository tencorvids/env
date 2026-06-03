{ ... }:
{
  networking.hostName = "buoy";
  networking.useDHCP = false;
  networking.interfaces.ens18.ipv4.addresses = [
    {
      address = "10.10.99.10";
      prefixLength = 24;
    }
  ];
  networking.defaultGateway = "10.10.99.1";
  networking.nameservers = [
    "10.10.10.1"
    "1.1.1.1"
    "8.8.8.8"
  ];
}
