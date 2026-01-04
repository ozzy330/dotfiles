vim.lsp.enable("bashls")
require("conform").setup({
	formatters_by_ft = {
		sh = { "shfmt" },
		terraform = { "terraform_fmt" },
	},
	formatters = {
		shfmt = {
			command = "shfmt",
			args = { "-ln bash", "$FILENAME" },
			stdin = true,
		},
	},
})
