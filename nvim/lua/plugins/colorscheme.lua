local status_ok, theme = pcall(require, "tokyonight")
if not status_ok then
	return
end

theme.setup({
	style = "storm",
	styles = {
		keywords = { italic = false },
	},
	on_colors = function(colors)
		colors.bg_dark = "#000000"
		colors.bg = "#080910"
	end,
})

vim.cmd("colorscheme tokyonight")
