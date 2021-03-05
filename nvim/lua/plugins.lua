vim.g.python3_host_prog = "/usr/local/bin/python3"
vim.g.node_host_prog = "/usr/local/lib/node_modules/neovim/bin/cli.js"

local install_path = vim.fn.stdpath("data").."/site/pack/packer/opt/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
end

vim.cmd("packadd packer.nvim")
vim.cmd("autocmd BufWritePost plugins.lua PackerCompile")

return require("packer").startup({
  function()

    -- Packer can manage itself as an optional plugin
    use { "wbthomason/packer.nvim", opt = true }

    -- Nvim Treesitter configurations and abstraction layer
    use {
      "nvim-treesitter/nvim-treesitter",
      config = function()
        require("nvim-treesitter.configs").setup({
          ensure_installed = "maintained",
          highlight = {enable = true, use_languagetree = true},
          indent = {enable = true},
          rainbow = {enable = true},
          disable = {
           "c", "c_sharp", "clojure", "cpp", "dart", "erlang", "fennel", "Godot", "go",
           "java", "julia", "kotlin", "nix", "ocaml", "ocaml_interface", "ocamllex",
           "php", "rst", "ruby", "rust", "sparql", "teal", "toml", "turtle", "verilog"
          },
        })
      end,
      requires = "p00f/nvim-ts-rainbow"
    }

    -- themes
    use {
      'mhartington/oceanic-next',
      config = function()
        vim.cmd('colorscheme OceanicNext')
        require("theme")
      end
    }

    -- The fastest Neovim colorizer.
    use {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup(
          {"*"},
          {names = false}
        )
      end
    }

    -- lua `fork` of vim-web-devicons for neovim
    use "kyazdani42/nvim-web-devicons"

    -- A file explorer tree for neovim written in lua
    use {
      "kyazdani42/nvim-tree.lua",
      config = function()
        vim.g.nvim_tree_width = 40
        vim.g.nvim_tree_auto_close = 1
        vim.g.nvim_tree_quit_on_open = 1
        vim.g.nvim_tree_hide_dotfiles = 1
        vim.g.nvim_tree_indent_markers = 1
        vim.g.nvim_tree_follow = 1
        vim.g.nvim_tree_git_hl = 1
        vim.g.nvim_tree_icons = { default = "" }
        vim.g.nvim_tree_ignore = {
          "plugin",
          "jsconfig.json",
          "package-lock.json",
          ".git",
          ".nuxt",
          "node_modules",
          ".cache",
          ".DS_Store"
        }
      end
    }

    use {
      "nvim-telescope/telescope.nvim",
      config = function()
        require"telescope".setup{
          defaults = {
            file_previewer = require"telescope.previewers".vim_buffer_cat.new,
            grep_previewer = require"telescope.previewers".vim_buffer_vimgrep.new,
            qflist_previewer = require"telescope.previewers".vim_buffer_qflist.new,
            scroll_strategy = "cycle",
            selection_strategy = "reset",
            layout_strategy = "flex"
          }
        }
      end,
      requires = {"nvim-lua/popup.nvim", "nvim-lua/plenary.nvim"}
    }

    -- show git stuff in signcolumn
    use {
      "lewis6991/gitsigns.nvim",
      config = function()
        require("gitsigns").setup({
          signs = {
            add = {hl = "DiffAdd"   , text = "▋", numhl="GitSignsAddNr"},
            change = {hl = "DiffChange", text = "▋", numhl="GitSignsChangeNr"},
            delete = {hl = "DiffDelete", text = "▋", numhl="GitSignsDeleteNr"},
            topdelete = {hl = "DiffDelete", text = "▋", numhl="GitSignsDeleteNr"},
            changedelete = {hl = "DiffChange", text = "▋", numhl="GitSignsChangeNr"},
          },
          sign_priority = 5,
        })
      end,
      requires = "nvim-lua/plenary.nvim"
    }

    -- For commmenting stuff out
    use "tomtom/tcomment_vim"

     -- Intellisense and completion engine
    use {
      "neoclide/coc.nvim", branch = "release",
      config = function()
        vim.g.coc_global_extensions = {
          "coc-snippets",
          "coc-tailwindcss"
        }
      end
    }

    -- Check syntax in Vim asynchronously and fix files
    use {
      "dense-analysis/ale",
      config = function()
        vim.g.ale_disable_lsp = 1
        vim.g.ale_sign_column_always = 1
        vim.g.ale_linter_aliases = { vue = { "vue", "javascript" }}
        vim.g.ale_linters = { vue = {"eslint", "vls"}}
        vim.g.ale_fixers = {"prettier", "eslint", "luafmt", "remove_trailing_lines", "trim_whitespace"}
        vim.g.ale_fix_on_save = 1
        vim.g.ale_sign_error = " "
        vim.g.ale_sign_warning = " "
        vim.g.ale_echo_msg_error_str = "E"
        vim.g.ale_echo_msg_warning_str = "W"
        vim.g.ale_echo_msg_format = "[%severity%][%linter%] %s"
      end
    }

    -- autopairs for neovim written by lua
    use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup() end
    }

    -- Multiple cursors plugin for vim/neovim
    use {
      "mg979/vim-visual-multi", branch = "master"
    }

    -- A solid language pack for Vim.
    use {
      "sheerun/vim-polyglot",
      config = function()
        vim.g.vue_pre_processors = {}
      end
    }

    -- vim-snipmate default snippets.
    use "honza/vim-snippets"

    -- neovim statusline plugin written in lua
    use {
      'hoob3rt/lualine.nvim',
      config = function()
        local lualine = require('lualine')
        lualine.options = {
          theme = 'oceanicnext',
          section_separators = {'', ''},
          component_separators = {'', ''},
          icons_enabled = false,
        }
        lualine.sections = {
          lualine_a = { 'mode'},
          lualine_b = { 'filename' , { 'diagnostics', sources = { 'coc', 'ale' }}},
          lualine_c = { 'branch', { 'diff' } },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location'  },
        }
        lualine.inactive_sections = {
          lualine_a = {  },
          lualine_b = {  },
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {  },
          lualine_z = {   }
        }
        lualine.status()
      end
    }

  end
})
