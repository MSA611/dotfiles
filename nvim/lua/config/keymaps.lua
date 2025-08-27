vim.g.mapleader = " "

vim.keymap.set({ "n", "v" }, "<leader>cf", function()
	require("conform").format({ timeout_ms = 3000 })
end, { desc = "Format file or selection" })
