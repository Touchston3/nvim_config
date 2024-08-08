return 
{ -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies =
    {
		'hrsh7th/cmp-nvim-lsp', -- autocompletion lsp bridge
		'williamboman/mason.nvim', -- mason
		'williamboman/mason-lspconfig.nvim', -- mason lsp bridge
    },

    config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup({})
		mason_lspconfig.setup(
		{
			ensure_installed = 
			{
				"lua_ls",
				"pyright",

			},
			automatic_installation = true,
		})
	end
}
