-- Neotree
vim.keymap.set("n", "<C-t>", ":Neotree toggle<CR>")

-- Nohl
vim.keymap.set("n", "<C-n>", ":nohl<CR>")

-- Esc (kj to <esc> mapping disabled)
-- vim.keymap.set("i", "kj", "<Esc>", {noremap = true})

-- Fix reseting select when move to tab
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
