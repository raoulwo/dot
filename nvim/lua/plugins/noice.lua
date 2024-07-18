return {
	{
		-- Replaces UI for messages, command-line and popup menu
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			-- UI component library
			"MunifTanjim/nui.nvim",
			-- Notification manager (Optional)
			-- "rcarriga/nvim-notify",
		},
		opts = {
			lsp = {
				-- Override markdown rendering so that **cmp** and other plugins use **Treesitter**
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					-- requires "hrsh7th/nvim-cmp"
					["cmp.entry.get_documentation"] = true,
				},
			},
			-- Easier configuration using presets
			presets = {
				bottom_search = true, -- Use a classic bottom command-line for search
				command_palette = false, -- Position command-line and popup together
				long_message_to_split = true, -- Send long messages to a split
				inc_rename = false, -- Input dialog for inc-rename.nvim
				lsp_doc_border = false, -- Border for hover docs and signature help
			},
		},
	},
}
