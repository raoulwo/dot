return {
	{
		"danymat/neogen",
		config = function()
			require("neogen").setup({
				enabled = true,
				input_after_comment = true,
			})

			vim.keymap.set(
				"n",
				"<leader>aa",
				":lua require('neogen').generate({ type = 'func' })<CR>",
				{ desc = "Generate function annotation" }
			)
			vim.keymap.set(
				"n",
				"<leader>af",
				":lua require('neogen').generate({ type = 'file' })<CR>",
				{ desc = "Generate file annotation" }
			)
			vim.keymap.set(
				"n",
				"<leader>ac",
				":lua require('neogen').generate({ type = 'class' })<CR>",
				{ desc = "Generate class annotation" }
			)
			vim.keymap.set(
				"n",
				"<leader>at",
				":lua require('neogen').generate({ type = 'type' })<CR>",
				{ desc = "Generate type annotation" }
			)
		end,
		-- Uncomment next line if you want to follow only stable versions
		-- version = "*"
	},
}
