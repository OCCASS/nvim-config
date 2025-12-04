vim.wo.number = true
vim.wo.relativenumber = true

vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.wrap = true
vim.wo.linebreak = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/zsh"

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard (disabled to prevent sync with system clipboard)
-- vim.opt.clipboard = "unnamedplus"

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- Fillchars
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

-- Disable swap files
vim.opt.swapfile = false

-- Remap 'dd' to black hole register (delete entire line)
vim.api.nvim_set_keymap('n', 'dd', '"_dd', { noremap = true, silent = true })

-- Remap 'd' (delete motion) to black hole register
vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'd', '"_d', { noremap = true, silent = true })

-- Remap 'x' (character deletion) to black hole register to prevent replacing text from going to clipboard
vim.api.nvim_set_keymap('n', 'x', '"_x', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'x', '"_x', { noremap = true, silent = true })

-- Remap 'c' (change motion) to black hole register to prevent replaced text from going to clipboard
vim.api.nvim_set_keymap('n', 'c', '"_c', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'c', '"_c', { noremap = true, silent = true })

-- Folding
vim.opt.foldmethod = "manual"

-- Disable the behavior where replaced text during paste operations gets stored in the clipboard
-- Configure Neovim to prevent replaced text from being stored in default register during paste operations
-- The best approach is to ensure that when we paste over visual selections,
-- the replaced text goes to the black hole register

-- For visual mode paste operations, ensure replaced text goes to black hole register
-- This handles the case when you visually select text and then paste over it
vim.keymap.set('x', 'p', '"_dP', { noremap = true, silent = true })
vim.keymap.set('x', 'P', '"_dP', { noremap = true, silent = true })

-- In normal mode, 'p' and 'P' will paste after/before the cursor and shouldn't replace text
-- unless pasting over a character with 'p' when at the end of a line, etc.
-- So we don't need to remap them as they don't typically replace text in normal mode
