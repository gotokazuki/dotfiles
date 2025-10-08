vim.g.mapleader = " "

local map = vim.keymap.set
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>h", ":nohlsearch<CR>")
