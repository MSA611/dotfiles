return {
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- load this before other plugins
        config = function()
            require('onedark').setup {
                style = 'darker'      -- You can choose other styles like 'dark', 'cool', 'deep', 'warm', 'warmer', 'light'
            }
            require('onedark').load() -- Enable the theme
        end
    }
}
