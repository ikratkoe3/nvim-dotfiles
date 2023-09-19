function Color(color)
	vim.opt.termguicolors = true
	vim.opt.background = "light"
	color = color or "zenbones"
	vim.cmd.colorscheme(color)
end

Color()
