vim.lsp.enable("lua_ls")
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
	},
})
