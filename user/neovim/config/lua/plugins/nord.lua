return {
  "gbprod/nord.nvim",
  priority = 1000,
  config = function()
    -- Setup nord.nvim
    require("nord").setup({})

    -- Set colorscheme
    vim.cmd.colorscheme("nord")
  end,
}
