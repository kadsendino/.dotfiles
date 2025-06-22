-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<space>tt", require("toggleterm").toggle)
vim.keymap.set("n", "<space>tw", ":terminal<CR>")
vim.api.nvim_set_keymap("t", "<ESC>", "<C-\\><C-n>", { noremap = true })

-- Move to window using the <ctrl> hjkl keys
-- map("n", "<leader><Left>", { desc = "Go to left window", remap = true })
-- map("n", "<leader><Down>", { desc = "Go to lower window", remap = true })
-- map("n", "<leader><Up>", { desc = "Go to upper window", remap = true })
-- map("n", "<leader><Right>", { desc = "Go to right window", remap = true })

-- Define key mappings for switching to windows using <leader>0-9
vim.api.nvim_set_keymap("n", "<leader>1", ':exe 1 .. "wincmd w"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>2", ':exe 2 .. "wincmd w"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>3", ':exe 3 .. "wincmd w"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>4", ':exe 4 .. "wincmd w"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>5", ':exe 5 .. "wincmd w"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>6", ':exe 6 .. "wincmd w"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>7", ':exe 7 .. "wincmd w"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>8", ':exe 8 .. "wincmd w"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>9", ':exe 9 .. "wincmd w"<CR>', { noremap = true })
--vim.api.nvim_set_keymap("n", "<leader>", ':exe 10 .. "wincmd w"<CR>', { noremap = true })

--Copy Text of whole File
vim.api.nvim_set_keymap("n", "y+", ":%y<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "d+", ":%d<CR>", { noremap = true })

-- Right click menu support
vim.keymap.set({ "n", "v" }, "<RightMouse>", function()
  require("menu.utils").delete_old_menus()

  vim.cmd.exec('"normal! \\<RightMouse>"')

  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local ft = vim.bo[buf].ft

  local menu = (ft == "neo-tree") and "neo-tree" or "default"

  require("menu").open(menu, { mouse = true })
end, {})

vim.keymap.set("n", "<C-n>", function()
  require("menu").open("neo-tree")
end, {})
