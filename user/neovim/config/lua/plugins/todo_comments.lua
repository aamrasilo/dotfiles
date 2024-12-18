return {
  "folke/todo-comments.nvim",
  event = "BufRead",
  opts = {},
  keys = {
    {
      "<leader>td",
      "<CMD>TodoTelescope<CR>",
      desc = "Telescope todo comments",
    },
  },
  dependencies = { "nvim-lua/plenary.nvim" },
}
