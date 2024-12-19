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

    -- LSP Keybindings
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(e)
        local opts = { buffer = e.buf }

        vim.keymap.set("n", "K", function()
          vim.lsp.buf.hover()
        end, opts)

        vim.keymap.set("n", "gd", function()
          vim.lsp.buf.definition()
        end, opts)

        vim.keymap.set("n", "<leader>ca", function()
          vim.lsp.buf.code_action()
        end, opts)

        vim.keymap.set("n", "<leader>rr", function()
          vim.lsp.buf.references()
        end, opts)

        vim.keymap.set("n", "<leader>rn", function()
          vim.lsp.buf.rename()
        end, opts)
      end,
    })
  end,
}
