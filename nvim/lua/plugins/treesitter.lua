return {
	{
		-- Better highlighting, editing and navigation
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			-- NOTE: Add languages to be installed here
			ensure_installed = {
				"bash",
				"c",
				"diff",
                "gitcommit",
				"html",
				"lua",
				"luadoc",
				"markdown",
				"ruby",
				"vim",
				"vimdoc",
				"elixir",
				"erlang",
				"eex",
				"heex",
			},

			-- Automatically install languages that aren't installed
			auto_install = true,
			highlight = {
				enable = true,
				-- Some languages like Ruby depend on Vim's regex highlighting system for indentation
				additional_vim_regex_highlighting = { "ruby" },
			},
			indent = { enable = true, disable = { "ruby" } },
		},
		config = function(_, opts)
			-- See `:help nvim-treesitter`

			-- Prefer git instead of curl
			require("nvim-treesitter.install").prefer_git = true
			---@diagnostic disable-next-line: missing-fields
			require("nvim-treesitter.configs").setup(opts)

			-- There are additional nvim-treesitter modules that you can use to interact with nvim-treesitter
			--   * Incremental selection: See `:help nvim-treesitter-incremental-selection-mod`
			--   * Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
			--   * Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
		end,
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
	},
}
