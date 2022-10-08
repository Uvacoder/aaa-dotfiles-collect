--[[ https://github.com/folke/tokyonight.nvim ]]
local status_ok, theme = pcall(require, "tokyonight")
if not status_ok then
	return
end

theme.setup({
	style = "night",
	on_colors = function(colors)
		colors.bg = "#080910"
	end,
	on_highlights = function(hl, c)
		hl.NeoTreeFloatBorder = { bg = c.bg_dark, fg = c.fg_dark }
		hl.CursorLineNr = { bg = "#000000" }
		hl.CursorLine = { bg = "#000000" }
	end,
})

vim.cmd("colorscheme tokyonight")
