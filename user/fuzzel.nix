{config, ...}: {
  # Configure Fuzzel
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "SauceCodePro Nerd Font:size=10.7:style=SemiBold";
        prompt = "\" \"";
        placeholder = "What do you want to run?";
        icon-theme = config.gtk.iconTheme.name;
        line-height = 20;

        lines = 10;
        width = 70;
        horizontal-pad = 20;
        inner-pad = 10;

        image-size-ratio = 0;
      };
      colors = {
        background = "2e3440ff";
        text = "d8dee9ff";
        prompt = "d8dee9ff";
        placeholder = "4c566aff";
        border = "8fbcbbff";
        match = "8fbcbbff";
        selection = "8fbcbbff";
        selection-text = "2e3440ff";
      };
      border = {
        width = 2;
        radius = 3;
      };
    };
  };
}
