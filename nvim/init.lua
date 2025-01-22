require("config.options")
require("config.lazy")
require("config.keymaps")

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	desc = "Highlight text when yank",
	group = vim.api.nvim_create_augroup("HighlighYank", { clear = true }),
})

-- Languages configs
require("langs.lua")
require("langs.sh")
