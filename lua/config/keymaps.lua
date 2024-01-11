-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<A-j>", "<C-W><C-J>")
vim.keymap.set("n", "<A-k>", "<C-W><C-K>")
vim.keymap.set("n", "<A-l>", "<C-W><C-L>")
vim.keymap.set("n", "<A-h>", "<C-W><C-H>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")