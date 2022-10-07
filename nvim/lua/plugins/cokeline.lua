-- https://github.com/noib3/nvim-cokeline
local status_ok, nckln = pcall(require, "nvim-cokeline")
if not status_ok then
	return
end

local get_hex = require("cokeline/utils").get_hex
local mappings = require("cokeline/mappings")

local normal_bg = get_hex("Normal", "bg")
local tabline_bg = get_hex("TablineFill", "bg")
local comments_fg = get_hex("Comment", "fg")
local line_nr_fg = get_hex("LineNr", "fg")
local white_fg = "#ffffff"
local green_fg = "#95EC30"
local errors_fg = "#FF0069"
local warnings_fg = "#FFC600"
local infos_fg = "#0088FF"
local hints_fg = "#A400FF"

local components = {
	space = { text = " ", truncation = { priority = 1 } },

	devicon = {
		text = function(buffer)
			return buffer.devicon.icon
		end,
		fg = function(buffer)
			return buffer.is_focused and buffer.devicon.color or comments_fg
		end,
		truncation = { priority = 1 },
	},

	index = {
		text = function(buffer)
			return buffer.index .. ":"
		end,
		fg = function(buffer)
			return buffer.is_focused and line_nr_fg or comments_fg
		end,
		truncation = { priority = 1 },
	},

	unique_prefix = {
		text = function(buffer)
			return buffer.unique_prefix
		end,
		fg = function(buffer)
			return buffer.is_focused and white_fg or comments_fg
		end,
		truncation = { priority = 3, direction = "left" },
	},

	filename = {
		text = function(buffer)
			return buffer.filename
		end,
		style = function(buffer)
			return (buffer.is_focused and "bold") or nil
		end,
		truncation = { priority = 2, direction = "left" },
	},

	close_or_unsaved = {
		text = function(buffer)
			return buffer.is_modified and " ﱣ" or ""
		end,
		fg = function(buffer)
			return buffer.is_modified and green_fg or nil
		end,
		truncation = { priority = 1 },
	},
}

require("cokeline").setup({
	show_if_buffers_are_at_least = 1,
	buffers = { new_buffers_position = "next" },
	rendering = { max_buffer_width = 30 },
	default_hl = {
		fg = function(buffer)
			return (buffer.diagnostics.hints ~= 0 and hints_fg)
				or (buffer.diagnostics.infos ~= 0 and infos_fg)
				or (buffer.diagnostics.warnings ~= 0 and warnings_fg)
				or (buffer.diagnostics.errors ~= 0 and errors_fg)
				or (buffer.is_focused and white_fg)
		end,
		bg = function(buffer)
			return buffer.is_focused and normal_bg or tabline_bg
		end,
	},
	components = {
		components.space,
		components.devicon,
		components.index,
		components.unique_prefix,
		components.filename,
		components.close_or_unsaved,
		components.space,
	},
})

local keymap = vim.api.nvim_set_keymap
local opts = { silent = true }

for i = 1, 9 do
	keymap("n", ("<Leader>%s"):format(i), ("<Plug>(cokeline-focus-%s)"):format(i), opts)
end
