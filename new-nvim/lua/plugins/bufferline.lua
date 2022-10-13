local status_ok, bffrln = pcall(require, "bufferline")
if not status_ok then
	return
end
 
bffrln.setup({
	options = {
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
		close_command = "bd! %d",
		show_close_icon = false,
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
	},

	highlights = {
		fill = {
			fg = { attribute = "fg", highlight = "#ff0000" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},

		background = {
			fg = { attribute = "fg", highlight = "TabLine" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},

		buffer_visible = {
			fg = { attribute = "fg", highlight = "TabLine" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},

		close_button = {
			fg = { attribute = "fg", highlight = "TabLine" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		close_button_visible = {
			fg = { attribute = "fg", highlight = "TabLine" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},

		tab_selected = {
			fg = { attribute = "fg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "Normal" },
		},

		tab = {
			fg = { attribute = "fg", highlight = "TabLine" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},

		tab_close = {
			-- fg = {attribute='fg',highlight='LspDiagnosticsDefaultError'},
			fg = { attribute = "fg", highlight = "TabLineSel" },
			bg = { attribute = "bg", highlight = "Normal" },
		},

		duplicate_selected = {
			fg = { attribute = "fg", highlight = "TabLineSel" },
			bg = { attribute = "bg", highlight = "TabLineSel" },
			italic = true,
		},

		duplicate_visible = {
			fg = { attribute = "fg", highlight = "TabLine" },
			bg = { attribute = "bg", highlight = "TabLine" },
			italic = true,
		},

		duplicate = {
			fg = { attribute = "fg", highlight = "TabLine" },
			bg = { attribute = "bg", highlight = "TabLine" },
			italic = true,
		},

		modified = {
			fg = { attribute = "fg", highlight = "#95EC30" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},

		modified_selected = {
			fg = { attribute = "fg", highlight = "#95EC30" },
			bg = { attribute = "bg", highlight = "Normal" },
		},

		modified_visible = {
			fg = { attribute = "fg", highlight = "#95EC30" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},

		separator = {
			fg = { attribute = "bg", highlight = "TabLine" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},

		separator_selected = {
			fg = { attribute = "bg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "Normal" },
		},

		indicator_selected = {
			fg = { attribute = "fg", highlight = "#FF9E64" },
			bg = { attribute = "bg", highlight = "Normal" },
		},
	},
})