require("lspconfig").ts_ls.setup({})
require("lspconfig").tailwindcss.setup({})
require("lspconfig").eslint.setup({})
require("conform").setup({
	formatters_by_ft = {
		tsx = { "prettierd", "rustywind" },
		html = { "prettierd", "rustywind" },
		css = { "prettierd", "rustywind" },
		js = { "prettierd", "rustywind" },
		javascriptreact = { "prettierd", "rustywind" },
		typescriptreact = { "prettierd", "rustywind" },
	},
})
