if vim.g.vscode then
    require("user.keymaps")
    require("user.options")
    return
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
