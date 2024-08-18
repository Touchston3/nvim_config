return
{ -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies =
    {
		'williamboman/mason.nvim', -- mason
		'williamboman/mason-lspconfig.nvim', -- mason lsp bridge
		"hrsh7th/cmp-nvim-lsp",
    },

    config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		require("lspconfig")
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"gopls",
			},
		})
		require("mason-lspconfig").setup_handlers({
			function(lsp_server_name)
				require("lspconfig")[lsp_server_name].setup({
					capabilities = capabilities,

				})
			end,
		})
	end
}
