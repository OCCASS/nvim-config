local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black", "autoflake", "reorder-python-imports" },
		rust = { "rust-analyzer" }, -- no lsp_format here
		javascript = { "prettierd", "prettier" }, -- stop after first available
	},
	format_on_save = {
		lsp_fallback = true,
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		conform.format({ bufnr = args.buf })
	end,
})
