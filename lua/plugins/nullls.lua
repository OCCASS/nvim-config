local null_ls = require("null-ls")
local group = vim.api.nvim_create_augroup("lsp_format_on_save", {clear = false})

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.eslint_d.with {
            filetypes = {
                "typescript", "javascript", "typescriptreact", "javascriptreact"
            }
        }, null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.lua_format,
        null_ls.builtins.formatting.prettier.with {
            filetypes = {
                "css", "scss", "less", "html", "json", "jsonc", "yaml",
                "markdown", "markdown.mdx", "graphql", "handlebars"

            }
        }, null_ls.builtins.formatting.black
    },
    on_attach = function(client, bufnr)
        client.server_capabilities.document_formatting = true
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({group = group, buffer = bufnr})
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = group,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({bufnr = bufnr, async = false})
                    -- vim.lsp.buf.formatting_sync()
                end
            })
        end
    end
})
