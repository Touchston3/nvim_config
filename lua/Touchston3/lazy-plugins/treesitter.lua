return { -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	-- Gonna need to figure out what I am doing with all of these keybindings and usecases
    config = function()
    	require('nvim-treesitter.configs').setup({
			auto_install = true,
		   	highlight = { enable = true,},
	  		indent = { enable = true, },
			incremental_selection = { 
				enable = true,
				keymaps = {
					init_selection = "<Leader>ss",
					node_incremental = "<Leader>si",
					node_decremental = "<Leader>sd",
				},
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,

					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
					},
					selection_modes = {
						['@parameter.outer'] = 'v', -- charwise
						['@function.outer'] = 'V', -- linewise
						['@class.outer'] = '<c-v>', -- blockwise
					},
				},
			},
		})
    end,
}
