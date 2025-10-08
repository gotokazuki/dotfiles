vim.g.python3_host_prog = vim.fn.exepath('python3') or ''

vim.opt.fileencoding = "utf-8"

-- UI
vim.opt.title = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 3
vim.opt.showmatch = true
vim.opt.showcmd = false
vim.opt.showmode = false
vim.opt.list = true
vim.opt.listchars = {
  tab = "»-",
  trail = "_",
  eol = "↲",
  extends = "»",
  precedes = "«",
  nbsp = "%"
}
vim.opt.visualbell = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8
vim.opt.splitright = true
vim.opt.splitbelow = true

-- File handling
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true

-- Search
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Indent
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true

-- Clipboard
vim.opt.clipboard:append("unnamedplus")

-- Completion
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Keymaps
vim.keymap.set("n", "<Leader>c", ":setlocal cursorline! cursorcolumn!<CR>", { silent = true })
vim.keymap.set("n", "<Leader>nh", ":nohl<CR>", { silent = true })
vim.keymap.set("n", "<Leader>t", ":NERDTree<CR>", { silent = true })
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

-- Highlight
vim.cmd [[
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21
highlight LineNr     ctermfg=8
]]
