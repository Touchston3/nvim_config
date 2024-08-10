return { -- Autocompletion
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lua",
	},
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},
			completion = { completeopt = 'menu,menuone,noinsert' },
			mapping = cmp.mapping.preset.insert({
				['<S-n>'] = cmp.mapping.select_next_item(),
				['<S-p>'] = cmp.mapping.select_prev_item(),
				['<S-y>'] = cmp.mapping.confirm(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lua" },

				{ name = 'nvim_lsp' },
				{ name = 'path' },
				{ name = 'buffer', keyword_length = 5 },
			}),
		})
	end,
  }
