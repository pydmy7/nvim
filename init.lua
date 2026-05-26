if vim.g.vscode then
    require("user.keymaps")
    require("user.options")
    require("user.autocmds")
    return
end

if vim.g.neovide then
    vim.o.guifont = "JetBrainsMono Nerd Font Mono"
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
