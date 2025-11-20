return {
	{
		"phpactor/phpactor",
		ft = "php",
		build = "composer install --no-dev --optimize-autoloader",
		config = function()
			vim.keymap.set("n", "<leader>m", ":PhpactorContextMenu<CR>", { silent = true })
			vim.keymap.set("n", "<leader>n", ":PhpactorClassNew<CR>", { silent = true })
		end,
	},
}
