return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    vim.list_extend(opts.ensure_installed, {
      "clangd",
      "clang-format",
      "cmake-language-server",
      "cmakelang",
      "cmakelint",
      "codelldb",
      "lua-language-server",
      "shfmt",
      "stylua",
    })
  end,
}

