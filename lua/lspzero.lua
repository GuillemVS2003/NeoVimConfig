local lsp = require("lsp-zero").preset('recommended')

lsp.on_attach(function(_, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
	"clangd", "pylsp", "csharp_ls", "lua_ls"
})

local lspconfig = require("lspconfig")

lspconfig.clangd.setup({})
lspconfig.pylsp.setup({})
lspconfig.csharp_ls.setup({})
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

vim.opt.scl = "no"

vim.diagnostic.config({
	update_in_insert = true
})

local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }
	}, {
		{ name = 'buffer' },
	})
})
