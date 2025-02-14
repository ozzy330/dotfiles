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

vim.diagnostic.config({
	virtual_text = false,
	float = true,
})

vim.api.nvim_create_autocmd("DiagnosticChanged", {
	callback = function()
		vim.diagnostic.setqflist({ open = false })
	end,
})

require("lspconfig").marksman.setup({})
require("conform").setup({
	formatters_by_ft = {
		markdown = { "prettier" },
	},
})

-- Languages configs
require("langs.lua")
require("langs.sh")
require("langs.go")
require("langs.tsx")
