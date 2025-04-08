require("lspconfig").clangd.setup({})

require("conform").setup({
	formatters_by_ft = {
		c = { "clang-format" },
		cpp = { "clang-format" },
	},
})
