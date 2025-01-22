return {
	"stevearc/oil.nvim",
	enabled = true,
	opts = {
		columns = {},
		view_options = {
			show_hidden = true,
			sort = {
				{ "name", "asc" },
			},
		},
		watch_for_changes = true,
	},
	vim.keymap.set("n", "ff", ":Oil<CR>", { silent = true }),
}
