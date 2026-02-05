require("lspconfig") -- обязательно оставить

local capabilities = vim.lsp.protocol.make_client_capabilities()

vim.keymap.set("n", "<C-d>", vim.diagnostic.open_float)

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", ",lr", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, ",la", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", ",lf", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})

vim.lsp.config("pyright", {
  root_markers = { "pyrightconfig.json", "pyproject.toml", ".git" },
})
vim.lsp.enable("pyright")

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

vim.lsp.enable("django-template-lsp")

vim.lsp.enable("djlsp")
