function Color(color)
	vim.opt.termguicolors = true
	vim.opt.background = "light"
	color = color or "github_dark_high_contrast"
	vim.cmd.colorscheme(color)
end

Color()
