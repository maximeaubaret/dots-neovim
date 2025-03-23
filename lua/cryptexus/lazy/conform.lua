return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				rust = { "rustfmt", lsp_format = "fallback" },
				json = { "prettierd", "prettier", stop_after_first = true },
				jsonc = { "prettierd", "prettier", stop_after_first = true },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
				nix = { "alejandra", stop_after_first = true },
				csharp = { "csharpier", stop_after_first = true },
			},

			format_on_save = {
				timeout_ms = 500,
			},
		},
	},
	{
		"zapling/mason-conform.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"stevearc/conform.nvim",
			"zapling/mason-conform.nvim",
		},
		config = function()
			require("mason-conform").setup({
				ignore_install = { "csharpier" },
			})
		end,
	},
}
