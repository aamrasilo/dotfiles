{lib, ...}: {
  # Configure Networking
  networking = {
    useDHCP = lib.mkDefault true;
    hostName = "nixos";
    networkmanager = {
      enable = true;
    };
  };
}
