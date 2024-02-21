vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        package.loaded["feline"] = nil
        package.loaded["catppuccin.groups.integrations.feline"] = nil
        require("feline").setup {
            components = require("catppuccin.groups.integrations.feline").get(),
        }
    end,
})

vim.cmd.colorscheme "catppuccin-macchiato" --  catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
