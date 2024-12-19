{pkgs, ...}: {
  # Configure Mako
  programs.mako = {
    enable = true;
    anchor = "top-right";
    borderSize = 2;
    borderColor = "#8fbcbb";
    backgroundColor = "#3b4252";
    borderRadius = 4;
    defaultTimeout = 6000;
    font = "SauceCodePro Nerd Font SemiBold 10";
    padding = "15";
    maxIconSize = 40;
    textColor = "#d8dee9";
    width = 350;
  };

  # Additional packages
  home.packages = with pkgs; [
    libnotify
  ];
}
