vim.lsp.enable("gopls")
require("conform").setup({
	formatters_by_ft = {
		go = { "gofmt" },
	},
})
