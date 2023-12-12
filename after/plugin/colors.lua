function Color(color)
	vim.opt.termguicolors = true
	vim.opt.background = "light"
	color = color or "github_light"
	vim.cmd.colorscheme(color)
end

Color()
