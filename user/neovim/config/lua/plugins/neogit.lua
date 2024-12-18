return {
  "NeogitOrg/neogit",
  config = true,
  keys = {
    {
      "<leader>ng",
      function()
        require("neogit").open()
      end,
      desc = "Open Neogit",
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
}
