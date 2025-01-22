local colors = {
	white = "#eef1f8",
	black = "#2c2e33",
	gray = "#4f5258",
	lightred = "#ffc0b9",
	blue = "#a6dbff",
	pink = "#ffcaff",
	green = "#b3f6c0",
}

return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	config = function()
		require("lualine").setup({
			options = {
				theme = {
					normal = {
						b = { fg = colors.green, bg = colors.black },
						a = { fg = colors.black, bg = colors.green, gui = "bold" },
						c = { fg = colors.white, bg = colors.black },
					},
					visual = {
						b = { fg = colors.pink, bg = colors.black },
						a = { fg = colors.black, bg = colors.pink, gui = "bold" },
					},
					inactive = {
						b = { fg = colors.black, bg = colors.blue },
						a = { fg = colors.white, bg = colors.gray, gui = "bold" },
					},
					replace = {
						b = { fg = colors.lightred, bg = colors.black },
						a = { fg = colors.black, bg = colors.lightred, gui = "bold" },
						c = { fg = colors.white, bg = colors.black },
					},
					insert = {
						b = { fg = colors.blue, bg = colors.black },
						a = { fg = colors.black, bg = colors.blue, gui = "bold" },
						c = { fg = colors.white, bg = colors.black },
					},
				},
				component_separators = {},
				section_separators = {},
			},
			sections = {
				lualine_x = {
					"filetype",
				},
			},
		})
	end,
}
