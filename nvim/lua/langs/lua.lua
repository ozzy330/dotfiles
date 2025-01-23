local capabilities = require("blink.cmp").get_lsp_capabilities()
require("lspconfig").lua_ls.setup({ capabilities = capabilities })
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
	},
})
