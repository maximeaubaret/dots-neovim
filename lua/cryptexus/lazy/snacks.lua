return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    animate = { enabled = false },
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
        -- { section = "header" },
        { section = "terminal", cmd = "fortune -s | cowsay | lolcat", hl = "header", indent = 8, padding = 1 },
        { title = "Keys",       section = "keys",                     indent = 2,    padding = 1 },
        { title = "Recent",     section = "recent_files",             indent = 2,    padding = 1 },
        { section = "startup" },
      }
    },
    explorer = { enabled = false },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    { "<leader>h", function() Snacks.dashboard() end, desc = "Dashboard" },
  }
}
