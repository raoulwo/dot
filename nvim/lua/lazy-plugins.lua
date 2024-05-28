require("lazy").setup({
  -- Gruvbox dark theme
  require("plugins/gruvbox"),

  -- LSP config
  require("plugins/lspconfig"),

  -- Telescope
  require("plugins/telescope"),

  -- Treesitter
  require("plugins/treesitter"),

  -- Code completion
  require("plugins/cmp"),

  -- Highlight todo comments
  require("plugins/todo-comments"),

  -- Adjust `shiftwidth` and `tabstop` heuristically
  "tpope/vim-sleuth",

  -- Comment out code using `gc`
  "numToStr/Comment.nvim",
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
