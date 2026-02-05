require("telescope").setup({
	defaults = {
		layout_config = {
			vertical = { width = 0.5 },
		},
		preview = {
			wrap = true,
		},
	},
	pickers = {
		live_grep = {
			theme = "dropdown",
		},
	},
})
local builtin = require("telescope.builtin")
vim.keymap.set("n", ",ff", builtin.find_files, {})
vim.keymap.set("n", ",fg", builtin.live_grep, {})
vim.keymap.set("n", ",fb", builtin.buffers, {})
vim.keymap.set("n", "gr", builtin.lsp_references, { noremap = true, silent = true })
vim.keymap.set("n", "gd", function()
	builtin.lsp_definitions({ jump_type = "tab" })
end, { noremap = true, silent = true })
vim.keymap.set("n", ",fs", function()
	builtin.lsp_document_symbols({ symbols = { "Class", "Function" } })
end, { noremap = true, silent = true })
vim.keymap.set("n", ",gs", builtin.git_status, { noremap = true, silent = true })
