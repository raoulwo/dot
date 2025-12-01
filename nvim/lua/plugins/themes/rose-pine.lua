return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "auto",
			dark_variant = "main",
			dim_inactive_windows = false,
			extend_background_behind_borders = true,
			enable = {
				terminal = true,
				legacy_highlights = true,
				migrations = true,
			},
			styles = {
				bold = true,
				italic = true,
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
