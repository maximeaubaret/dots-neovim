return {
  "arcticicestudio/nord-vim",
  config = function()
    vim.g.nord_cursor_line_number_background = 1
    vim.g.nord_italic = 1
    vim.g.nord_italic_comments = 1

    -- vim.cmd.colorscheme("nord")
  end,
}
--
-- return {
--   "gbprod/nord.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- https://github.com/gbprod/nord.nvim#%EF%B8%8F-configuration
--     require("nord").setup({
--       transparent = true,
--       borders = false,
--     })
--
--     vim.cmd.colorscheme("nord")
--   end,
-- }
