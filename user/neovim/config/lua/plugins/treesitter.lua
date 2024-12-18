return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    -- Setup nvim-treesitter
    configs.setup({
      auto_install = false,
      sync_install = false,
      ensure_installed = {
        "rust",
        "python",
        "go",
        "gomod",
        "gosum",
        "lua",
        "vim",
        "vimdoc",
        "markdown",
        "nix",
        "toml",
        "json",
      },
      highlight = {
        enable = true,
      },
    })
  end,
}
