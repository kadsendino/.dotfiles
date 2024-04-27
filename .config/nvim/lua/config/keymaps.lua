-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<space>t", require("toggleterm").toggle)

-- Move to window using the <ctrl> hjkl keys
-- map("n", "<leader><Left>", { desc = "Go to left window", remap = true })
-- map("n", "<leader><Down>", { desc = "Go to lower window", remap = true })
-- map("n", "<leader><Up>", { desc = "Go to upper window", remap = true })
-- map("n", "<leader><Right>", { desc = "Go to right window", remap = true })
