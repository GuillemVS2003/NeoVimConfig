vim.filetype.add({extension = { wgsl = "wgsl", typ = "typst" }});

vim.opt.nu = true
vim.g.mapleader = ','
vim.opt.colorcolumn = '80'

vim.g.tabstop='8'
vim.g.shiftwidth='8'

vim.g.rust_recommended_style = '0'

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.guicursor="n-v-c-i:block"

vim.wo.wrap = true
vim.wo.linebreak = true

vim.api.nvim_set_keymap('i', "<Down>", "<C-o>gj", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', "<Up>", "<C-o>gk", { noremap = true, silent = true })
