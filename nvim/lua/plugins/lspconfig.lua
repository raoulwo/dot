-- NOTE: For the difference between LSP and Treesitter see `:help lsp-vs-treesitter`

return {
	{
		-- LSP Configuration
		"neovim/nvim-lspconfig",
		dependencies = {
			-- NOTE: Mason must be loaded before its dependents
			-- Package manager for LSP servers, DAP servers, linters and formatters
			{ "williamboman/mason.nvim", config = true },
			-- Bridges Mason with the LSP configuration
			"williamboman/mason-lspconfig.nvim",
			-- Plugin to install third party tools using Mason
			"WhoIsSethDaniel/mason-tool-installer.nvim",

			-- UI for notifications and LSP messages
			{ "j-hui/fidget.nvim", opts = {} },

			-- Signature help, docs and autocompletion for the Nvim Lua API
			{ "folke/neodev.nvim", opts = {} },
		},
		config = function()
			-- Anytime the LSP attaches to a buffer the `callback` is executed
			vim.api.nvim_create_autocmd({ "LspAttach" }, {
				-- Autocommand groups are used to logically group autocommands
				group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
				-- This callback is executed anytime the `LspAttach` event is triggered
				callback = function(event)
					-- Helper method for setting LSP key mappings
					local lsp_map = function(cmd, fn, desc)
						vim.keymap.set("n", cmd, fn, { buffer = event.buf, desc = "LSP: " .. desc })
					end

					-- Go to the definition of the word under your cursor (<C-t> to go back)
					lsp_map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
					-- Go to the references of the word under your cursor
					lsp_map("gr", require("telescope.builtin").lsp_references, "[G]oto [I]mplementation")
					-- Go to the implementation of the word under your cursor
					lsp_map("gi", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
					-- Go to the type definition of the word under your cursor
					lsp_map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
					-- Fuzzy find all symbols in your current document
					lsp_map("<leader>f", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
					-- Fuzzy find all symbols in your current workspace
					lsp_map(
						"<leader>ss",
						require("telescope.builtin").lsp_dynamic_workspace_symbols,
						"[W]orkspace [S]ymbols"
					)

					-- Rename the variable under your cursor
					lsp_map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
					-- Execute a code action (the cursor usually needs to be on top of an error/suggestion)
					lsp_map("<leader>i", vim.lsp.buf.code_action, "[C]ode [A]ction")
					-- Go to the declaration of the word under your cursor
					lsp_map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

					-- Open up documentation for the word under your cursor
					lsp_map("K", vim.lsp.buf.hover, "Hover Documentation")

					local client = vim.lsp.get_client_by_id(event.data.client_id)
					if client and client.server_capabilities.documentHighlightProvider then
						local highlight_group = vim.api.nvim_create_augroup("lsp-highlight", { clear = false })

						-- The following two autocommands will highlight references of the word under your cursor
						-- when it rests there for a while (see `:help CursorHold`). When you move the cursor,
						-- the highlights will be cleared.
						vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
							buffer = event.buf,
							group = highlight_group,
							callback = vim.lsp.buf.document_highlight,
						})
						vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
							buffer = event.buf,
							group = highlight_group,
							callback = vim.lsp.buf.clear_references,
						})

						-- Delete the autocommands when the LSP detaches
						vim.api.nvim_create_autocmd("LspDetach", {
							group = vim.api.nvim_create_augroup("lsp-detach", { clear = true }),
							callback = function(args)
								vim.lsp.buf.clear_references()
								vim.api.nvim_clear_autocmds({ group = "lsp-highlight", buffer = args.buf })
							end,
						})
					end

					-- Enable inlay hints should they be supported by the language server
					if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
						lsp_map("<leader>th", function()
							vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
						end, "[T]oggle [H]ints")
					end
				end,
			})

			-- NOTE: Add language servers here

			-- local lspconfig = vim.lsp.config

			-- The language servers an be configured using the following keys:
			-- * `cmd`: A table used to override the default command used to start the server
			-- * `filetypes`: A table used to override the default list of file types associated with the LS
			-- * `capabilities`: A table used to override fields in capabilities (can be used to disable features).
			-- * `settings`: A table used to override the default settings passed when initializing a serve

			-- See `:help lspconfig-all` for a list of all pre-configured LSPs
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						completion = {
							callSnippet = "Replace",
						},
					},
				},
			})

			vim.lsp.config("ts_ls", {
				root_markers = { "package.json", "tsconfig.json" },
				single_file_support = false,
				settings = {},
			})

			vim.lsp.config("intelephense", {
				filetypes = {
					"php",
				},
				init_options = {
					licenceKey = "/Users/raoulwo/.intelephense/licence.txt",
					globalStoragePath = "/Users/raoulwo/.intelephense/",
				},
			})

			vim.lsp.config("pyright", {
				settings = {},
			})

			-- By default Nvim doesn't support everything part of the LSP spec
			-- By adding nvim-cmp, luasnip and so on, Nvim has more capabilities in this regard
			-- Here, we create new *capabilities* with nvim-cmp and broadcast them to the LSs
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

			vim.lsp.config("tailwindcss", {
				capabilities = capabilities,
				filetypes = {
					"html",
					-- "elixir",
					-- "eelixir",
					-- "heex",
				},
				init_options = {
					userLanguages = {
						elixir = "html-eex",
						eelixir = "html-eex",
						heex = "html-eex",
					},
				},
				settings = {
					tailwindCSS = {
						experimental = {
							classRegex = {
								'class[:]\\s*"([^"]*)"',
							},
						},
					},
				},
			})

			vim.lsp.config("emmet_ls", {
				capabilities = capabilities,
				filetypes = {
					"html",
					"css",
					"php",
					-- "elixir",
					-- "eelixir",
					-- "heex",
				},
			})

			-- Ensure the servers and tools are installed
			require("mason").setup()

			-- NOTE: Add other tools to be installed by Mason here
			local ensure_installed = {
				"lua_ls",
				"ts_ls",
				"intelephense",
				"pyright",
				"tailwindcss",
				"emmet_ls",
			}
			vim.list_extend(ensure_installed, {
				"stylua",
			})
			require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

			require("mason-lspconfig").setup({
				handlers = {
					function(server_name)
						local server = servers[server_name] or {}
						-- Only override values explicitly passed in the server configuration above
						server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
						vim.lsp.config[server_name].setup(server)
					end,
				},
			})
		end,
	},
}
