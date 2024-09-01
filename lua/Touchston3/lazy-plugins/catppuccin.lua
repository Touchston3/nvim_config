return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	config = function()
		require('catppuccin').setup({
			flavor = 'mocha',
			transparent_background = false,
			term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
			background = {
				light = 'latte',
				dark = 'mocha',
			},
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			color_overrides = {},
			highlight_overrides = {
				mocha = function(colors)
					return {
						TabLineSel = { bg = colors.pink, },
						CmpBorder = { fg = colors.surface2, },
						Pmenu = { bg = colors.none, },
						TelescopeBorder = { link = "FloatBorder" },
					}
				end,
			},
			default_integrations = true,
			integrations = {
				cmp = true,
				telescope = true,
				nvimtree = true,
				treesitter = true,
			},
		})
		vim.cmd.colorscheme('catppuccin')
	end,
}
