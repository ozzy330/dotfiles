require("lspconfig").gopls.setup({})
require("conform").setup({
	formatters_by_ft = {
		go = { "gofmt" },
	},
})
