return 
{ -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies =
    {
		'williamboman/mason.nvim', -- mason
		'williamboman/mason-lspconfig.nvim', -- mason lsp bridge
    },

    config = function()
		require("lspconfig")
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"golangci_lint_ls",
			},
		})
		require("mason-lspconfig").setup_handlers({
			function(lsp_server_name)
				require("lspconfig")[lsp_server_name].setup({})
			end,
		})
	end
}
