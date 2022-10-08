local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- Install your plugins here
local function load_plugins()
	require("packer").startup({
		function(use)
			use({ "wbthomason/packer.nvim" })

			use({ "nvim-lua/plenary.nvim" })

			use({ "kyazdani42/nvim-web-devicons" })

			use({ "Almo7aya/openingh.nvim" })

			use({ "mg979/vim-visual-multi" })

			use({
				"norcalli/nvim-colorizer.lua",
				config = "require('plugins.colorizer')",
			})

			use({
				"windwp/nvim-ts-autotag",
				config = "require('plugins.autotag')",
			})

			use({
				"windwp/nvim-autopairs",
				config = "require('plugins.autopairs')",
			})

			use({
				"dyng/ctrlsf.vim",
				config = "require('plugins.ctrlsf')",
			})

			use({
				"rcarriga/nvim-notify",
				config = "require('plugins.notify')",
			})
			use({
				"lukas-reineke/indent-blankline.nvim",
				config = "require('plugins.indentline')",
			})

			use({
				"folke/tokyonight.nvim",
				config = "require('plugins.colorscheme')",
			})

			use({
				"akinsho/bufferline.nvim",
				tag = "v2.*",
				config = "require('plugins.bufferline')",
			})

			use({
				"akinsho/toggleterm.nvim",
				config = "require('plugins.toggleterm')",
			})

			use({
				"numToStr/Comment.nvim",
				requires = "JoosepAlviste/nvim-ts-context-commentstring",
				config = "require('plugins.comment')",
			})

			use({
				"kevinhwang91/nvim-ufo",
				requires = "kevinhwang91/promise-async",
				config = "require('plugins.ufo')",
			})

			use({
				"nvim-treesitter/nvim-treesitter",
				run = ":TSUpdate",
				config = "require('plugins.treesitter')",
			})

			use({
				"nvim-neo-tree/neo-tree.nvim",
				branch = "v2.x",
				requires = "MunifTanjim/nui.nvim",
				config = "require('plugins.neo-tree')",
			})

			use({
				"hrsh7th/nvim-cmp",
				requires = {
					"hrsh7th/cmp-buffer",
					"hrsh7th/cmp-path",
					"saadparwaiz1/cmp_luasnip",
					"hrsh7th/cmp-nvim-lsp",
					"hrsh7th/cmp-nvim-lua",
					"L3MON4D3/LuaSnip",
					"rafamadriz/friendly-snippets",
				},
				config = "require('plugins.cmp')",
			})

			use({
				"williamboman/mason.nvim",
				requires = {
					"williamboman/mason-lspconfig.nvim",
					"neovim/nvim-lspconfig",
					"jose-elias-alvarez/null-ls.nvim",
				},
				config = "require('plugins.lsp')",
			})

			-- Automatically set up your configuration after cloning packer.nvim
			-- Put this at the end after all plugins
			if parcker_bootstrap then
				require("packer").sync()
			end
		end,

		-- Have packer use a popup window
		config = {
			display = {
				open_fn = function()
					return require("packer.util").float({ border = vim.g.border_style })
				end,
				prompt_border = vim.g.border_style,
			},
			auto_clean = true,
			compile_on_sync = true,
		},
	})
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]])

-- Automatically install packer
if fn.isdirectory(install_path) == 0 then
	local plugin_path = fn.stdpath("config") .. "/plugin/packer_compiled.lua"
	fn.delete(plugin_path, "rf")

	parcker_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"20",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})

	vim.cmd([[packadd packer.nvim]])
end

load_plugins()

--[[ use({ ]]
--[[ 	"noib3/nvim-cokeline", ]]
--[[ 	config = "require('plugins.cokeline')", ]]
--[[ }) ]]
--[[]]

--[[ use({ ]]
--[[ 	"nvim-lualine/lualine.nvim", ]]
--[[ 	config = "require('plugins.lualine')", ]]
--[[ }) ]]

--[[ use({ ]]
--[[ 	"kyazdani42/nvim-tree.lua", ]]
--[[ 	config = "require('plugins.nvim-tree')", ]]
--[[ }) ]]

--[[ use({ ]]
--[[ 	"neovim/nvim-lspconfig", ]]
--[[ 	requires = { ]]
--[[ 		"williamboman/nvim-lsp-installer", ]]
--[[     "jose-elias-alvarez/null-ls.nvim", ]]
--[[ 	}, ]]
--[[ 	config = "require('plugins.lsp')", ]]
--[[ }) ]]
