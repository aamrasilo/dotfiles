-- Remap leader
vim.g.mapleader = " "

-- Manage buffers
vim.keymap.set("n", "<C-Tab>", "<CMD>bn<CR>", { desc = "Switch to next buffer" })
vim.keymap.set("n", "<C-S-Tab>", "<CMD>bp<CR>", { desc = "Switch to previous buffer" })
vim.keymap.set("n", "<C-q>", "<CMD>bd<CR>", { desc = "Close current buffer" })
