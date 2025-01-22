return {
	"nvim-telescope/telescope.nvim",
	enabled = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
		},
	},

	config = function()
		require("telescope").setup({
			pickers = {
				find_files = { theme = "ivy", disable_devicons = true },
				buffers = { theme = "ivy", disable_devicons = true },
			},
			extensions = {
				fzf = {},
			},
		})
		vim.keymap.set("n", "<leader>fd", function()
			require("telescope.builtin").find_files({ hidden = true })
		end)
		vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers)
	end,
}
