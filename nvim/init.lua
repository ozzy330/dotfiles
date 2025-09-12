require("config.options")
require("config.lazy")
require("config.keymaps")

-- Iniciar donde abra el archivo
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("lcd %:p:h")
	end,
})

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
require("lspconfig").marksman.setup({})
require("conform").setup({
	formatters_by_ft = {
		markdown = { "prettier" },
		yaml = { "yamlfmt" },
		python = { "black" },
		typst = { "typstyle" },
	},
})

-- Languages configs
require("langs.lua")
require("langs.sh")
require("langs.go")
require("langs.tsx")
require("langs.cpp")
