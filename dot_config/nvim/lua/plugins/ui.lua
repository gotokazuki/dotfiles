return {
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>",  desc = "Grep text" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>",    desc = "List buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<CR>",  desc = "Help tags" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          mappings = { i = { ["<esc>"] = require("telescope.actions").close } },
        },
      })
    end,
  },
}
