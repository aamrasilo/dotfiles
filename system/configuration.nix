{
  modulesPath,
  pkgs,
  user,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")

    # Include submodules
    ./fonts
    ./hardware
    ./hyprland
    ./sddm
    ./android.nix
    ./boot.nix
    ./filesystems.nix
    ./localization.nix
    ./networking.nix
    ./rtkit.nix
    ./ssh.nix
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable experimental nix command and flakes features
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Define user account
  users.users.${user} = {
    isNormalUser = true;
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
