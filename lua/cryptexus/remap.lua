vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open project view" })

-- Move lines in normal mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Move lines in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up" })

-- Tabs
vim.keymap.set("n", "<S-h>", vim.cmd.bprev, { desc = "Go to previous buffer " })
vim.keymap.set("n", "<S-l>", vim.cmd.bnext, { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>bd", vim.cmd.bd, { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>bx", ":%bd|e#|bd#<CR>", { desc = "Close all but this buffer" })

-- Copy/Paste from different vims
vim.keymap.set("v", "<C-c>", ":w! ~/.vimbuffer<CR>", { desc = "Global copy" })
vim.keymap.set("n", "<C-c>", ":.w! ~/.vimbuffer<CR>", { desc = "Global copy" })
vim.keymap.set("n", "<C-p>", ":r ~/.vimbuffer<CR>", { desc = "Global paste" })


-- Code
vim.keymap.set("n", "<leader>cr", vim.cmd.LspRestart, { desc = "Restart LSP" })
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
--
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })


-- Open diagnostic window
vim.keymap.set("n", "<C-k>", vim.diagnostic.open_float, { desc = "Open diagnostics window" })
