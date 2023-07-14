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

--NOTE: enable cursorline underline style on buffer enter automatically
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  callback = function()
    vim.cmd([[highlight CursorLine gui=underline cterm=underline]])
  end,
})

--NOTE: enable NOTE: tags highlighting
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  callback = function()
    vim.cmd([[highlight Note cterm=underline ctermbg=green gui=underline guibg=none guifg=green]])
    vim.cmd([[call matchadd("Note", "NOTE:")]])
  end,
})

--NOTE: enable TODO: tags highlighting
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  callback = function()
    vim.cmd([[highlight Todo cterm=underline ctermbg=red gui=underline guibg=none guifg=red]])
    vim.cmd([[call matchadd("Todo", "TODO:")]])
  end,
})

--NOTE: enable IMPORTANT: tags highlighting
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  callback = function()
    vim.cmd([[highlight Important cterm=underline ctermbg=yellow gui=underline guibg=none guifg=yellow]])
    vim.cmd([[call matchadd("Important", "IMPORTANT:")]])
  end,
})
