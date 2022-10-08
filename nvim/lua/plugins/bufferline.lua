local status_ok, bffrln = pcall(require, "bufferline")
if not status_ok then
	return
end

bffrln.setup({
	options = {
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
		show_close_icon = false,
	},
})
