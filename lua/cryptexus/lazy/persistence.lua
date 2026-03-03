return {
	"folke/persistence.nvim",
	event = "BufReadPre", -- this will only start session saving when an actual file was opened
	opts = {},
	config = function(_, opts)
		local persistence = require("persistence")
		persistence.setup(opts)

		vim.api.nvim_create_autocmd("FocusLost", {
			group = vim.api.nvim_create_augroup("PersistenceAutoSave", { clear = true }),
			callback = function()
				persistence.save()
			end,
		})
	end,
}
