require("lspconfig").bashls.setup({})
require("conform").setup({
	formatters_by_ft = {
		sh = { "shfmt" },
	},
	formatters = {
		shfmt = {
			command = "shfmt",
			args = { "-ln bash", "$FILENAME" },
			stdin = true,
		},
	},
})
