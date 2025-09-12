local set = vim.opt
set.tabstop = 2
set.shiftwidth = 2
set.clipboard = "unnamedplus"
set.signcolumn = "yes"
set.termguicolors = true
set.breakindent = true
set.undofile = true
set.winbar = "%=%m %f"
set.laststatus = 3
vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })
vim.api.nvim_set_hl(0, "WinBarNC", { bg = "NONE" })
-- Case insensitive searching UNLESS /C or capital in search
set.ignorecase = true
set.smartcase = true
set.completeopt:remove("preview")
