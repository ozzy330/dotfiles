return {
	"stevearc/conform.nvim",
	enabled = true,
	config = function()
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
	opts = {
		format_on_save = {
			-- These options will be passed to conform.format()
			-- async = true,
			timeout_ms = 10000,
			lsp_format = "fallback",
		},
	},
}
