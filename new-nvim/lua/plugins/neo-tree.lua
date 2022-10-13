-- https://github.com/nvim-neo-tree/neo-tree.nvim
local status_ok, ntr = pcall(require, "neo-tree")
if not status_ok then
	return
end

-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

ntr.setup({
	popup_border_style = vim.g.border_style,
	enable_git_status = true,
	enable_diagnostics = false,
	default_component_configs = {
		icon = {
			folder_closed = "",
			folder_open = "",
			folder_empty = "ﰊ",
			default = "",
		},
		modified = { symbol = "" },
		git_status = {
			symbols = {
				-- Change type
				added = "A", -- "✚",
				modified = "M", -- "",
				deleted = "D", -- "✖",
				renamed = "R", -- "",
				-- Status type
				untracked = "U",
				ignored = "I",
				unstaged = "",
				staged = "",
				conflict = "C",
			},
		},
	},
	window = {
		position = "float",
		popup = { -- settings that apply to float position only
			size = { height = "18", width = "45" },
			position = { row = "2", col = "50%" },
		},
	},
	filesystem = {
		filtered_items = {
			visible = false, -- when true, they will just be displayed differently than normal items
			hide_dotfiles = true,
			hide_gitignored = true,
			hide_by_name = {
				"store-flag.d.ts",
				"quasar.d.ts",
				"dist",
				"package-lock.json",
				"node_modules",
				"plugin",
				"packer_compiled.lua",
			},
			always_show = { ".gitignored" },
			never_show = { ".DS_Store", "thumbs.db" },
			follow_current_file = true,
		},
	},
})