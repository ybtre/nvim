vim.g.mapleader = " "

-- Move selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- leave insert mode
vim.keymap.set("i", "<A-c>", "<Esc>")

-- disable macro recording
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q", "<nop>")

-- navigate between splits
vim.keymap.set("n", "<A-j>", "<C-W><C-J>")
vim.keymap.set("n", "<A-k>", "<C-W><C-K>")
vim.keymap.set("n", "<A-l>", "<C-W><C-L>")
vim.keymap.set("n", "<A-h>", "<C-W><C-H>")

-- find and rename using vim macro
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]])

-- paste from clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- open Vertical Split
vim.keymap.set("n", "<leader>vs", [[:vsplit<CR>]])

-- tabular
vim.keymap.set("v", "<leader>=", [[:Tabularize /=<CR>]])

-- yank to clipboard next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
--vim.keymap.set("n", "<leader>Y", [["+Y]])
--vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
