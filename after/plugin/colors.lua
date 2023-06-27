function set_theme(color)
	--color = color or "rose-pine"
	--color = color or "kanagawa-dragon"
        
	color = color or "gruvbox8_hard"

	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


set_theme()
