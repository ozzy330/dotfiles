local keymap = function(...)
	vim.keymap.set(...)
end

keymap({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
keymap({ "n", "v", "i" }, "<A-j><A-k>", "<Esc>", { silent = true })
keymap("n", "<leader>x", ":source %<CR>")
keymap("v", "<leader>x", ":.lua<CR>")

-- Clear search highligh
keymap("n", "/?", ":let @/=''<CR>", { silent = true })

-- Tab management
keymap("n", "<leader>tn", ":tabnew<CR>", { silent = true })
keymap("n", "<leader>tc", ":tabclose<CR>", { silent = true })

-- Delete a word
keymap("i", "<C-BS>", "<C-W>", { silent = true })

-- Terminal
keymap("n", "tt", function()
	vim.cmd.vnew()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 10)
	vim.cmd.terminal()
	vim.cmd.startinsert()
end)

local trash_terminal = nil
keymap("n", "TT", function()
	trash_terminal = vim.api.nvim_create_buf(true, true)
	vim.cmd.tabnew()
	vim.cmd.terminal()
	vim.cmd.startinsert()
end)
keymap("t", "<A-j><A-k>", "<C-\\><C-n>", { silent = true })
keymap("n", "th", ":tabprev<CR>", { silent = true })
keymap("n", "tl", ":tabnext<CR>", { silent = true })

-- LSP
keymap("n", "grn", vim.lsp.buf.rename)
keymap("n", "gca", vim.lsp.buf.code_action)
keymap("n", "grf", vim.lsp.buf.references)
keymap("n", "gdf", vim.lsp.buf.definition)
keymap("n", "gdc", vim.lsp.buf.declaration)
keymap("n", "<leader>d", vim.diagnostic.open_float)
keymap("n", "gdg", function()
	vim.diagnostic.setqflist()
	vim.cmd("copen")
end)

-- Quick Fix
keymap("n", "<M-j>", "<cmd>cnext<CR>", { nowait = true })
keymap("n", "<M-k>", "<cmd>cpre<CR>", { nowait = true })
