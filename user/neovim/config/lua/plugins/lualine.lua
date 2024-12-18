return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = true,
      theme = "nord",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { { "branch", icon = "" }, "diff" },
      lualine_c = { "diagnostics" },
      lualine_x = { "lsp_progress" },
      lualine_y = { "filetype" },
      lualine_z = { "location" },
    },
    tabline = {
      lualine_a = {
        {
          "buffers",
          filetype_names = {
            TelescopePrompt = "Telescope",
            oil = "Oil",
          },
          symbols = {
            modified = " ●",
            alternate_file = "",
            directory = "",
          },
        },
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons", "arkav/lualine-lsp-progress" },
}
