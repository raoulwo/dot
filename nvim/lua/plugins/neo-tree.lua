return {
	-- Browse the file system
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		-- Lua library for Nvim
		"nvim-lua/plenary.nvim",
		-- For icons (requires a Nerd Font)
		"nvim-tree/nvim-web-devicons",
		-- UI component library
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "\\", ":Neotree reveal right<CR>", { desc = "NeoTree reveal" } },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
	},
}
