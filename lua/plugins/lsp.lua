require("lspconfig") -- обязательно оставить

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

vim.lsp.config("pyright", {
	capabilities = capabilities,
})

vim.lsp.config("ts_ls", {
	capabilities = capabilities,
})

vim.lsp.config("prismals", {
	capabilities = capabilities,
})

vim.lsp.config("astro", {
	capabilities = capabilities,
	init_options = {
		typescript = {
			tsdk = "/Users/timurpavlov/.local/share/nvim/mason/packages/astro-language-server/node_modules/typescript/lib",
		},
	},
})

vim.lsp.config("gopls", {
	capabilities = capabilities,
})

vim.lsp.config("css-lsp", {
	capabilities = capabilities,
})

vim.lsp.config("django-template-lsp", {
	capabilities = capabilities,
})
