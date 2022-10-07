local status_ok, bffrln = pcall(require, "bufferline")
if not status_ok then
	return
end

bffrln.setup({
	options = {
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
		show_close_icon = false,
		show_buffer_close_icons = false,
		indicator = {
			style = "none",
		},
		--[[ close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions" ]]
		--[[ offsets = { { filetype = "NvimTree", text = "", padding = 1 } }, ]]
	},
})
