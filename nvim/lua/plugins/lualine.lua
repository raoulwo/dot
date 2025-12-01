local separator = { '"▏"', color = "StatusLineNonText" }

local colors = {
	base = "#191724",
	surface = "#1f1d2e",
	overlay = "#26233a",
	muted = "#6e6a86",
	subtle = "#908caa",
	text = "#e0def4",
	love = "#eb6f92",
	gold = "#f6c177",
	rose = "#ebbcba",
	pine = "#31748f",
	foam = "#9ccfd8",
	iris = "#c4a7e7",
	highlight_low = "#21202e",
	highlight_med = "#403d52",
	highlight_high = "#524f67",
}

local mode_color = {
	n = colors.rose,
	no = colors.rose,
	i = colors.foam,
	ic = colors.foam,
	v = colors.pine,
	[""] = colors.pine,
	V = colors.pine,
	s = colors.pine,
	S = colors.pine,
	[""] = colors.pine,
	R = colors.iris,
	Rv = colors.iris,
	c = colors.love,
	cv = colors.love,
	ce = colors.love,
	r = colors.love,
	rm = colors.love,
	["r?"] = colors.love,
	["!"] = colors.love,
	t = colors.love,
}

local mode_color_fn = function()
	return { fg = mode_color[vim.fn.mode()] }
end

return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				icons_enabled = "true",
				theme = "auto",
				-- component_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
				-- component_separators = { left = "|", right = "|" },
				-- section_separators = { left = "█", right = "█" },
			},
			-- {
			-- options = {
			-- 	section_separators = "",
			-- 	component_separators = "",
			-- 	globalstatus = true,
			-- 	theme = {
			-- 		normal = {
			-- 			a = "StatusLine",
			-- 			b = "StatusLine",
			-- 			c = "StatusLine",
			-- 		},
			-- 	},
			-- },
			-- sections = {
			-- 	lualine_a = {
			-- 		{
			-- 			"mode",
			-- 			color = mode_color_fn,
			-- 		},
			-- 		separator,
			-- 	},
			-- 	lualine_b = {
			-- 		{
			-- 			"branch",
			-- 			color = { fg = colors.love },
			-- 		},
			-- 		"diff",
			-- 		separator,
			-- 		'"󰿘 " .. tostring(#vim.tbl_keys(vim.lsp.get_clients()))',
			-- 		{ "diagnostics", sources = { "nvim_diagnostic" } },
			-- 		separator,
			-- 	},
			-- 	lualine_c = {
			-- 		{
			-- 			"filename",
			-- 			color = { fg = colors.pine },
			-- 		},
			-- 	},
			-- 	lualine_x = {
			-- 		"filetype",
			-- 		"encoding",
			-- 		"fileformat",
			-- 	},
			-- 	lualine_y = {
			-- 		separator,
			-- 		'(vim.bo.expandtab and "␠ " or "⇥ ") .. " " .. vim.bo.shiftwidth',
			-- 		separator,
			-- 	},
			-- 	lualine_z = {
			-- 		{
			-- 			"progress",
			-- 			color = mode_color_fn,
			-- 		},
			-- 		{
			-- 			"location",
			-- 			color = mode_color_fn,
			-- 		},
			-- 	},
			-- },
		},
	},
}
