return {
	{
		-- Obsidian integration
		"epwalsh/obsidian.nvim",
		version = "*",
		lazy = true,
		ft = "markdown",
		-- FIX: Only load the plugin for markdown files in my vault
		-- event = {
		-- 	"BufReadPre " .. vim.fn.expand("~") .. "/Zettel/**.md",
		-- 	"BufNewFile " .. vim.fn.expand("~") .. "/Zettel/**.md",
		-- },
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {
			workspaces = {
				{
					name = "zettel",
					path = "~/Zettel",
				},
			},
		},
	},
}
