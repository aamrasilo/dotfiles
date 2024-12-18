{
  # Configure Filesystems
  fileSystems = {
    # Root
    "/" = {
      fsType = "ext4";
      device = "/dev/disk/by-label/NIXOS-ROOT";
    };

    # Boot
    "/boot" = {
      fsType = "vfat";
      device = "/dev/disk/by-label/NIXOS-BOOT";
      options = ["fmask=0077" "dmask=0077"];
    };

    # Home
    "/home" = {
      fsType = "ext4";
      device = "/dev/disk/by-label/NIXOS-HOME";
    };
  };
}
