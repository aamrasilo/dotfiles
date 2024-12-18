return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local builtin = require("telescope.builtin")

    -- Setup telescope.nvim
    require("telescope").setup({})

    -- Setup keymaps
    vim.keymap.set("n", "<leader>tp", builtin.git_files, { desc = "Telescope git files" })
    vim.keymap.set("n", "<leader>tr", builtin.live_grep, { desc = "Telescope live grep" })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
}
