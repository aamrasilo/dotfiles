-- Line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- Shift and tab width
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Undo
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Always draw sign column
vim.opt.signcolumn = "yes"

-- Diagnostic config
vim.diagnostic.config({
  severity_sort = true,
})
