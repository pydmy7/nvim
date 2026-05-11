return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = { ".git", ".svn", ".hg", "CVS", ".DS_Store", "Thumbs.db" },
          format = function(item, picker)
            item.hidden = false
            return Snacks.picker.format.file(item, picker)
          end,
        },
      },
    },
  },
}
