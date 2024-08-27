-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- copy paste from different vims
keymap.set("v", "<C-c>", ":w! ~/.vimbuffer<CR>")
keymap.set("n", "<C-c>", ":.w! ~/.vimbuffer<CR>")

keymap.set("n", "<C-p>", ":r ~/.vimbuffer<CR>")

-- Open diagnostic window
keymap.set("n", "<C-k>", ":lua vim.diagnostic.open_float()<CR>")

-- Close current tab
keymap.set("n", "<leader>bx", ":bd<CR>", {
  desc = "Close current buffer",
})
