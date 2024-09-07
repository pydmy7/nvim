return {
  -- Ensure C/C++ debugger is installed
  "williamboman/mason.nvim",
  optional = true,
  opts = {
    ensure_installed = {
      "clangd",
      "clang-format",
      "cmake-language-server",
      "cmakelang",
      "cmakelint",
      "codelldb",
      "lua-language-server",
      "shfmt",
      "stylua",
    }
  },
}
