return {
	{
		-- Code completion engine
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			-- Code snippet engine
			"L3MON4D3/LuaSnip",
			build = (function()
				-- The step below is not supported in many Windows environments
				if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
					return
				end
				return "make install_jsregexp"
			end)(),
			dependencies = {
				-- `friendly-snippets` is a collection of snippets for many programming languages
				-- See `https://github.com/rafamadriz/friendly-snippets`
			},
			-- LuaSnip completion engine for nvim-cmp
			"saadparwaiz1/cmp_luasnip",

			-- nvim-cmp doesn't ship all sources by default, they are split into multiple repos
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"onsails/lspkind-nvim",
		},
		config = function()
			-- See `:help cmp`
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			luasnip.config.setup({})

			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				completion = { completeopt = "menu,menuone,noinsert" },

				-- See `:help ins-completion`
				mapping = cmp.mapping.preset.insert({
					-- Select the [n]ext item
					["<C-n>"] = cmp.mapping.select_next_item(),
					-- Select the [p]revious item
					["<C-p>"] = cmp.mapping.select_prev_item(),

					-- Scroll the documentation window [f]orward
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					-- Scroll the documentation window [b]ack
					["<C-b>"] = cmp.mapping.scroll_docs(-4),

					-- [Y]es to accept the completion
					["<C-y>"] = cmp.mapping.confirm({ select = true }),

					-- Manually trigger a completion
					["<C-space>"] = cmp.mapping.complete({}),

					-- Move to the right of an expansion location
					["<C-l>"] = cmp.mapping(function()
						if luasnip.expand_or_locally_jumpable() then
							luasnip.expand_or_jump()
						end
					end, { "i", "s" }),
					-- Move to the left of an expansion location
					["<C-h>"] = cmp.mapping(function()
						if luasnip.locally_jumpable(-1) then
							luasnip.jump(-1)
						end
					end, { "i", "s" }),
				}),

				sources = {
					{ name = "nvim_lsp" },
					{ name = "nvim_lsp_signature_help" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
					{ name = "cmdline" },
				},

				experimental = {
					ghost_text = true,
				},
			})
		end,
	},
}
