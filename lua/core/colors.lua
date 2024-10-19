vim.opt.termguicolors = true

-- Gruvbox theme
function gruvbox()
    require("gruvbox").setup({italic = {strings = false, comments = false}})
    vim.cmd.colorscheme("gruvbox")
end

gruvbox()
