--[[ https://github.com/mvllow/modes.nvim ]]
local status_ok, mds = pcall(require, "modes")
if not status_ok then
	return
end

mds.setup({
	colors = {
		copy = "#f5c359",
		delete = "#c75c6a",
		insert = "#78ccc5",
		visual = "#9745be",
	},
	line_opacity = 0.2,
	set_cursor = true,
	set_cursorline = true,
	set_number = false,
	ignore_filetypes = { "Neo-tree", "NvimTree", "TelescopePrompt" },
})
