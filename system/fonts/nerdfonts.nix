{pkgs, ...}: {
  # Configure Nerd Fonts
  fonts.packages = with pkgs.nerd-fonts; [
    sauce-code-pro
  ];
}
