return {
	"FabijanZulj/blame.nvim",
	lazy = false,
	config = function()
		require("blame").setup({})
	end,
	keys = {
		{
			"<leader>gb",
			function()
				vim.cmd.BlameToggle()
			end,
			desc = "Git Blame",
		},
	},
}
