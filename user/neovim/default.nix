{
  # Configure Neovim
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    defaultEditor = true;
  };

  # Copy configuration
  xdg.configFile.nvim = {
    source = ./config;
    recursive = true;
  };
}
