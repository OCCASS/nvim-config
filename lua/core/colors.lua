vim.opt.termguicolors = true

-- Gruvbox theme
function gruvbox()
    require("gruvbox").setup({italic = {strings = false, comments = false}})
    vim.cmd.colorscheme("gruvbox")
end

function solorizedOsaka()
    require("solarized-osaka").setup({
        transparent = true,
        styles = {keywords = {bold = true}, functions = {}}
    })
    vim.cmd [[colorscheme solarized-osaka]]
end

solorizedOsaka()
