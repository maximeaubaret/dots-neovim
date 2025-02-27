return {
  "tpope/vim-fugitive",
  keys = {
    { "<leader>gs", function() vim.cmd.Git() end,         desc = "Git status" },
    { "<leader>gl", function() vim.cmd.Git("log") end,    desc = "Git log" },
    { "<leader>gd", function() vim.cmd.Git("diff") end,   desc = "Git diff" },
    { "<leader>gc", function() vim.cmd.Git("commit") end, desc = "Git commit" },
  }
}
