{pkgs, ...}: {
  # Configure GTK
  gtk = {
    enable = true;
    theme = {
      name = "Nordic";
      package = pkgs.nordic;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-nord;
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      size = 12;
      package = pkgs.bibata-cursors;
    };
  };
}
