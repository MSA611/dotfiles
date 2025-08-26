return{
    'nvim-treesitter/nvim-treesitter',
    build=":TSUpdate",
    config=function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    higlight={enable=true},
	    indent = {enable=true},
	    autotage = {enable = true},
	    ensure_installed={
		"lua",
		"tsx",
		"java",
		"typescript",
		"php",
		"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline"
	    },
	    auto_install=false,
	})
    end
}
