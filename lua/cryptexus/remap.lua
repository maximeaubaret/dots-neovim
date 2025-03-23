vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open project view" })
-- Move lines in normal mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })

vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
-- Move lines in visual mode
vim.keymap.set("v", "<A-K>", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
vim.keymap.set("v", "<A-J>", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up" })

-- Tabs
vim.keymap.set("n", "<S-h>", vim.cmd.bprev, { desc = "Go to previous buffer " })
vim.keymap.set("n", "<S-l>", vim.cmd.bnext, { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>bd", function()
	require("snacks").bufdelete()
end, { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>bo", function()
	vim.cmd.BufferLineCloseOthers()
end, { desc = "Close all but this buffer" })

-- Copy/Paste from different vims
vim.keymap.set("v", "<C-c>", ":w! ~/.vimbuffer<CR>", { desc = "Global copy" })
vim.keymap.set("n", "<C-c>", ":.w! ~/.vimbuffer<CR>", { desc = "Global copy" })
vim.keymap.set("n", "<C-p>", ":r ~/.vimbuffer<CR>", { desc = "Global paste" })

-- Code
-- vim.keymap.set("n", "<leader>cr", vim.cmd.LspRestart, { desc = "Restart LSP" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "LSP Rename" })
vim.keymap.set("n", "<leader>c=", vim.lsp.buf.format, { desc = "LSP Format" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Actions" })

vim.keymap.set("n", "<C-k>", function()
	require("trouble").previous({ mode = "diagnostics", jump = true, skip_groups = true })
end, { desc = "Move to previous issue" })
vim.keymap.set("n", "<C-j>", function()
	require("trouble").next({ mode = "diagnostics", jump = true, skip_groups = true })
end, { desc = "Move to next issue" })
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
--
vim.keymap.set("n", "gd", function()
	require("telescope.builtin").lsp_definitions()
end, { desc = "Go to definition" })

-- Open diagnostic window
vim.keymap.set("n", "<C-k>", vim.diagnostic.open_float, { desc = "Open diagnostics window" })

vim.keymap.set("n", "<leader>fn", function()
	require("noice").cmd("history")
end, { desc = "Notifications history" })

-- persistence
vim.keymap.set("n", "<leader>qs", function()
	require("persistence").load()
end, { desc = "Load the session for the current directory" })

vim.keymap.set("n", "<leader>qS", function()
	require("persistence").select()
end, { desc = "Select a session to load" })

vim.keymap.set("n", "<leader>ql", function()
	require("persistence").load({ last = true })
end, { desc = "Load the last session" })

vim.keymap.set("n", "<leader>qd", function()
	require("persistence").stop()
end, { desc = "Stop Persistence (session won't be saved on exit)" })
