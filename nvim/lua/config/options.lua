local set = vim.opt
set.tabstop = 2
set.shiftwidth = 2
set.clipboard = "unnamedplus"
set.signcolumn = "yes"
vim.o.termguicolors = true
vim.o.breakindent = true
vim.o.undofile = true
-- Case insensitive searching UNLESS /C or capital in search
set.ignorecase = true
set.smartcase = true
set.completeopt:remove("preview")
