require("lazy").setup({
	-- Gruvbox material theme
	require("plugins/gruvbox-material"),
	-- Kanagawa theme
	require("plugins/kanagawa"),

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

	-- Preview pending keys
	-- require("plugins/which-key"),

	-- Add git signs to the gutter
	require("plugins/gitsigns"),

	-- Automatic formatting
	require("plugins/conform"),

	-- Linting
	require("plugins/lint"),

	-- Better textobjects, surroundings, statusline ...
	require("plugins/mini"),

	-- Browse the file system
	require("plugins/neo-tree"),

	-- Customizable statusline
	require("plugins/lualine"),

	-- UI replacement
	require("plugins/noice"),

	-- Automatically close and rename html tags
	require("plugins/ts-autotag"),

	-- Obsidian integration
	-- require("plugins/obsidian"),

	-- Better tabs,
	-- require("plugins/barbar"),

	-- Git integration
	"tpope/vim-fugitive",

	-- Adjust `shiftwidth` and `tabstop` heuristically
	"tpope/vim-sleuth",

	-- Comment out code using `gc`
	"numToStr/Comment.nvim",
}, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
