return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_format" },
      go = { "goimports", "gofmt" },
      rust = { "rustfmt" },
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
  },
  keys = {
    {
      "<leader>ff",
      function()
        require("conform").format({ async = true })
      end,
      desc = "Format code buffer",
    },
  },
}
