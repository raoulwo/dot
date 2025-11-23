return {
	{
		"vim-test/vim-test",
		config = function()
			vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>")
			vim.keymap.set("n", "<leader>tf", ":TestFile<CR>")
			vim.keymap.set("n", "<leader>ts", ":TestSuite<CR>")
			vim.keymap.set("n", "<leader>tl", ":TestLast<CR>")
			vim.keymap.set("n", "<leader>tv", ":TestVisit<CR>")

			vim.cmd([[
                function! FloatermStrategy(cmd)
                    execute 'silent FloatermKill'
                    execute 'FloatermNew! '.a:cmd
                    "" execute 'FloatermNew! '.a:cmd.' |less -X'
                endfunction

                let g:test#custom_strategies = {'floaterm': function('FloatermStrategy')}
                let g:test#strategy = 'floaterm'
            ]])
		end,
	},
}
