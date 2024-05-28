return {
	{
		-- Highlighting for todo comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = {
			-- Lua library for Nvim
			"nvim-lua/plenary.nvim",
		},
		opts = {},
	},
}
