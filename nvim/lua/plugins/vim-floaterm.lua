return {
	{
		"voldikss/vim-floaterm",
		config = function()
			vim.g.floaterm_width = 0.8
			vim.g.floaterm_height = 0.8

			vim.keymap.set("n", "<leader>T", ":FloatermToggle<CR>")
			vim.keymap.set("t", "<leader>T", "<C-\\><C-n>:FloatermToggle<CR>")

			vim.cmd([[
                highlight Floaterm guibg=#1f1d2e
                highlight FloatermBorder guibg=#1f1d2e guifg=#1f1d2e
            ]])
		end,
	},
}
