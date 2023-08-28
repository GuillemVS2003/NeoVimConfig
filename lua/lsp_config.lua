require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { 'lua_ls', 'clangd', 'pylsp', 'csharp_ls' }
})

local lsp = require("lspconfig")
local lsp_defaults = lsp.util.default_config

lsp_defaults.capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp.lua_ls.setup {}
lsp.clangd.setup {}
lsp.pylsp.setup {}
lsp.csharp_ls.setup {}

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = true,
	underline = true,
	severity_sort = false,
	float = true
})
