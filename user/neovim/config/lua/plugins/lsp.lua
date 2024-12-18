return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Make capabilities
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    -- Server configurations
    local servers = {
      -- Nix
      nixd = {},

      -- Golang
      gopls = {},

      -- Lua
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      },

      -- Python
      pyright = {},

      -- Rust
      rust_analyzer = {},
    }

    -- Configure servers
    for server_name, server_config in pairs(servers) do
      server_config.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server_config.capabilities or {})

      -- Setup server
      require("lspconfig")[server_name].setup(server_config)
    end
  end,
}
