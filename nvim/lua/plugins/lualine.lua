local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local filetype = {
	"filetype",
	icons_enabled = false,
}

local location = {
	"location",
	padding = 1,
}

lualine.setup({
	options = {
		globalstatus = true,
		icons_enabled = true,
		theme = "horizon",
		component_separators = { left = "", right = "" },
		section_separators = { left = " ", right = " " },
		always_divide_middle = false,
	},
	sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "branch", "diagnostics" },
		lualine_x = { "encoding", filetype, location, "progress" },
		lualine_y = {},
		lualine_z = {},
	},
})
