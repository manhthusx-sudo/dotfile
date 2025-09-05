-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<C-/>", function()
  vim.cmd("bot split")
  vim.cmd("resize 15")
  vim.cmd("term")
  vim.cmd("startinsert")
end, { desc = "Terminal horizontal split below" })

keymap.set("t", "<C-/>", function()
  vim.cmd("vsplit")
  vim.cmd("term")
  vim.cmd("startinsert")
end, { desc = "Terminal vertical split" })

keymap.set("t", "<C-o>", "<C-\\><C-n>", { desc = "Terminal to normal mode" })

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
