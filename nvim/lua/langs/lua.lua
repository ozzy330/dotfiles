require("lspconfig").lua_ls.setup({})
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
	},
})
