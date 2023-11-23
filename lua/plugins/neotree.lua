vim.fn.sign_define("DiagnosticSignError",
                   {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
                   {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
                   {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
                   {text = " ", texthl = "DiagnosticSignHint"})
require("neo-tree").setup({
    close_if_last_window = true,
    enable_git_status = false,
    window = {
        width = 30,
        mapping_options = {noremap = true, nowait = true},
        mappings = {}
    },
    filesystem = {
        filtered_items = {hide_dotfiles = false},
        follow_current_file = {enabled = true, leave_dirs_open = true},
        group_empty_dirs = true
    }
})
