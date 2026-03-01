vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("settings")

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- import plugins
require("lazy").setup({ { import = "plugins" } })

require("keymaps")
require("lsp")
require("autocmds")
