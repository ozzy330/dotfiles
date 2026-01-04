vim.lsp.enable("tinymist")

require("tinymist").setup({
	settings = {
		formatterMode = "typstyle",
		exportPdf = "onType",
		semanticTokens = "disable",
	},
})
