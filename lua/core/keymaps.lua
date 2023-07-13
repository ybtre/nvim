vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.ignorecase = true
vim.opt.hlsearch = true

vim.opt.smartindent = true

vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.cursorline = true

vim.opt.updatetime = 25
vim.opt.colorcolumn = "0"

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

--:hi CursorLine gui=underline cterm=underline
