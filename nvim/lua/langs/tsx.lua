vim.lsp.enable("ts_ls")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("eslint")
require("conform").setup({
	formatters_by_ft = {
		tsx = { "prettierd", "rustywind" },
		html = { "prettierd", "rustywind" },
		css = { "prettierd", "rustywind" },
		javascript = { "prettierd", "rustywind" },
		javascriptreact = { "prettierd", "rustywind" },
		typescriptreact = { "prettierd", "rustywind" },
	},
})
