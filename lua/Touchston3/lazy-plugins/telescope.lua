return
{ -- Fuzzy Finder (files, lsp, etc)
	"nvim-telescope/telescope.nvim",
 	dependencies =
	{
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope_builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files)
--		vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep) 
	end,
}
