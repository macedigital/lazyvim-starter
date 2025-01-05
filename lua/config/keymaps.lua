-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move line up with Alt+Up in normal mode
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move Up" })
-- Move line down with Alt+Down in normal mode
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move Down" })
-- Move selection up with Alt+Up in visual mode
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move Selection Up" })
-- Move selection down with Alt+Down in visual mode
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move Selection Down" })
