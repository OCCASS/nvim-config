local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim"
        }
    }, {"nvim-treesitter/nvim-treesitter"}, {"neovim/nvim-lspconfig"},
    -- Themes packages
    {"ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ...},
    {"craftzdog/solarized-osaka.nvim", lazy = true, priority = 1000, opts = {}},
    -- Themes packages end
    {"hrsh7th/cmp-nvim-lsp"}, {"hrsh7th/cmp-buffer"}, {"hrsh7th/cmp-path"},
    {"hrsh7th/cmp-cmdline"}, {"hrsh7th/nvim-cmp"}, {"lewis6991/gitsigns.nvim"},
    {"williamboman/mason.nvim"}, {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = {"nvim-lua/plenary.nvim"}
    }, {"jose-elias-alvarez/null-ls.nvim"},
    {"L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp"}

})
