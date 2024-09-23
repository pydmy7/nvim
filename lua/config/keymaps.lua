-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


vim.keymap.del({ "n", "v", "o" }, "s")


-- 在 LazyVim 的配置文件中加入以下内容
-- 窗口切换时循环逻辑
local function smart_window_nav(dir)
  local curr_win = vim.api.nvim_get_current_win()
  vim.cmd("wincmd " .. dir)
  if vim.api.nvim_get_current_win() == curr_win then
    -- 没有切换成功时，使用循环逻辑
    if dir == "l" then
      vim.cmd("wincmd h") -- 如果最右边，切换到最左边
    elseif dir == "h" then
      vim.cmd("wincmd l") -- 如果最左边，切换到最右边
    elseif dir == "k" then
      vim.cmd("wincmd j") -- 如果最上边，切换到最下边
    elseif dir == "j" then
      vim.cmd("wincmd k") -- 如果最下边，切换到最上边
    end
  end
end

-- 键位映射
vim.keymap.set("n", "<C-h>", function() smart_window_nav("h") end, { desc = "循环切换到左边窗口" })
vim.keymap.set("n", "<C-j>", function() smart_window_nav("j") end, { desc = "循环切换到下边窗口" })
vim.keymap.set("n", "<C-k>", function() smart_window_nav("k") end, { desc = "循环切换到上边窗口" })
vim.keymap.set("n", "<C-l>", function() smart_window_nav("l") end, { desc = "循环切换到右边窗口" })

-- 仅在普通模式和可视模式下禁用方向键
vim.keymap.set({ 'n', 'v' }, '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<Right>', '<Nop>', { noremap = true, silent = true })

