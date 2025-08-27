require("config.keymaps")
require("config.lazy")
require("config.options")

require("conform").setup({ --for formatters
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		json = { "prettier" },
		html = { "prettier" },
		jsonc = { "prettier" },
		css = { "prettier" },
		java = { "clang-format" },
		c = { "clang-format" },
		-- add other filetypes as needed
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		require("conform").format()
	end,
})
