-- lua/plugins/gruvbox.lua
return {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    lazy = false, -- Load this during startup if it is your main colorscheme
    priority = 1000, -- Ensure it loads before other startup plugins
    config = function()
        -- Set background option
        vim.o.background = "dark" -- or "light" for a light variant

        -- Configure Gruvbox
        require("gruvbox").setup({
            undercurl = true, -- Enable undercurl
            underline = true, -- Enable underline
            bold = true, -- Enable bold
            italic = {
                comments = true, -- Make comments italic
                strings = true, -- Make strings italic
                operators = false, -- Don't make operators italic
            },
            inverse = true, -- Inverse colors for status lines, etc.
            contrast = "hard", -- Options: 'soft', 'medium', or 'hard' for contrast
        })

        -- Apply the colorscheme
        vim.cmd("colorscheme gruvbox")
        -- Uncomment to switch based on system theme (requires additional setup)
        -- vim.cmd('colorscheme ' .. (vim.o.background == 'dark' and 'gruvbox' or 'gruvbox_light'))
    end,
}
