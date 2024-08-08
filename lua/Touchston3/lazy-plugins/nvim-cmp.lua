return 
{ -- Autocompletion
	"hrsh7th/nvim-cmp",
    dependencies = {
		"L3MON4D3/LuaSnip",
      	"saadparwaiz1/cmp_luasnip",
      	"hrsh7th/cmp-path",
    },

    config = function()
      -- See `:help cmp`
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'

      luasnip.config.setup({})
      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = { completeopt = 'menu,menuone,noinsert' },

        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
        },
      }
    end,
  }
