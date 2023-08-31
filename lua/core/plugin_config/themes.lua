vim.o.termguicolors = true
--vim.cmd [[ colorscheme gruvbox ]]
--vim.cmd [[ colorscheme gruvbox8 ]]
--vim.cmd [[ colorscheme gruvbox-baby ]]
--vim.cmd [[ colorscheme moonbow ]]
--vim.cmd [[ colorscheme ayu ]]
--vim.cmd [[ colorscheme kanagawa ]]
--vim.cmd [[ colorscheme tokyonight-night ]]
--vim.cmd [[ colorscheme quiet ]]

vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

function Set_transparent_bg()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end
