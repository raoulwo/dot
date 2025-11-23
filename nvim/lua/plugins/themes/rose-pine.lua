return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "main",
			dark_variant = "main",
			styles = {
				bold = true,
				italic = false,
				transparency = false,
			},
			highlight_groups = {
				Comment = { italic = true },
				Conditional = { italic = true },
				Repeat = { italic = true },
				Label = { italic = true },
				Keyword = { italic = true },
				["@keyword.import"] = { italic = true },
				["@keyword.conditional"] = { italic = true },
				["@keyword.exception"] = { italic = true },
				["@keyword.return"] = { italic = true },
				["@variable.builtin"] = { italic = true },
			},
		},
	},
}
