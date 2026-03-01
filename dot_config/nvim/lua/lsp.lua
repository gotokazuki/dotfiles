local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function(args)
    vim.lsp.start({
      name = "lua_ls",
      cmd = { "lua-language-server" },
      root_dir = vim.fs.root(args.buf, { ".git", ".luarc.json", ".luarc.jsonc" }) or vim.loop.cwd(),
      capabilities = capabilities,
      settings = {
        Lua = {
          workspace = { checkThirdParty = false },
          diagnostics = { globals = { "vim" } },
          telemetry = { enable = false },
        },
      },
    })
  end,
})

-- TypeScript / JavaScript
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  callback = function(args)
    vim.lsp.start({
      name = "ts_ls",
      cmd = { "typescript-language-server", "--stdio" },
      root_dir = vim.fs.root(args.buf, { "tsconfig.json", "package.json", ".git" }) or vim.loop.cwd(),
      capabilities = capabilities,
    })
  end,
})

-- Rust
vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function(args)
    vim.lsp.start({
      name = "rust_analyzer",
      cmd = { "rust-analyzer" },
      root_dir = vim.fs.root(args.buf, { "Cargo.toml", ".git" }) or vim.loop.cwd(),
      capabilities = capabilities,
    })
  end,
})
