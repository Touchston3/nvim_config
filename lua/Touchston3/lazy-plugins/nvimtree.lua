return 
{
	"nvim-tree/nvim-tree.lua",
	config = function()
		local nvim_tree = require("nvim-tree").setup()
		vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>')
	end
}
