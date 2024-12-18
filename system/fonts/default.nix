{pkgs, ...}: {
  imports = [
    # Include submodules
    ./nerdfonts.nix
  ];

  # Install fonts
  fonts.packages = [pkgs.poppins];
}
