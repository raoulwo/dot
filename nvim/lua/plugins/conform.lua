return {
	{
		-- Automatic formatting
		"stevearc/conform.nvim",
		lazy = false,
		keys = {
			{
				"<leader>rf",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "[F]ormat buffer",
			},
		},
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				-- Disable `format_on_save lsp_fallback` for languages without a well
				-- standardized coding style

				-- NOTE: You can add additional languages not to be formatted here
				local disable_filetypes = { c = true, cpp = true }
				return {
					timeout_ms = 500,
					lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
				}
			end,
			formatters_by_ft = {
				-- NOTE: You can add formatters to run automatically here
				bash = { "shfmt" },
				lua = { "stylua" },
				go = { "gofmt" },
			},
		},
	},
}
