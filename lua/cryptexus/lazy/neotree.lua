return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  config = function()
    require("neo-tree").setup {
      filesystem = {
        follow_current_file = { enabled = true },
      }
    }

    vim.keymap.set("n", "<leader>e", function() vim.cmd.Neotree("toggle") end, { desc = "Open Tree" })
  end
}
