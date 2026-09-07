return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    -- The core essentials to make sure your errors don't come back
    ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
    
    -- Automatically install missing parsers when you enter a new file type
    auto_install = true,
    
    highlight = {
      enable = true,
    },
  },
}
