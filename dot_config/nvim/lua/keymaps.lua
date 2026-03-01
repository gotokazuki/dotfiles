vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>h", ":nohlsearch<CR>", opts)
map("n", "<C-a>", "<Nop>", opts)
map("n", "<C-x>", "<Nop>", opts)
