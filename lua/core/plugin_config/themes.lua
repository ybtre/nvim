vim.o.termguicolors = true

--vim.cmd [[ colorscheme gruvbox8_hard ]]
--vim.cmd [[ colorscheme iceberg ]]
--vim.cmd [[ colorscheme ayu ]]
--vim.cmd [[ colorscheme tokyonight-night ]]
--vim.cmd [[ colorscheme quiet ]]
--vim.cmd [[ colorscheme kanagawa ]]
vim.cmd [[ colorscheme alabaster ]]

--vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

function Set_transparent_bg()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end
