return {
  setup = function(use)
    use({
      "nvim-treesitter/nvim-treesitter",

      run = ":TSUpdate",

      requires = {
        "p00f/nvim-ts-rainbow",
        "nvim-treesitter/nvim-treesitter-textobjects",
        "tpope/vim-commentary",
        "JoosepAlviste/nvim-ts-context-commentstring",
      },

      config = function()
        require("nvim-treesitter.configs").setup({
          ensure_installed = {
            "css",
            "lua",
            "html",
            "bash",
            "vue",
            "javascript",
            "json",
            "graphql",
            "php",
            "ruby",
            "typescript",
            "regex",
            "jsonc",
          },
          highlight = {
            enable = true, -- false will disable the whole extension
          },
          rainbow = {
            enable = true,
            extended_mode = true,
            max_file_lines = nil,
          },
          context_commentstring = {
            enable = true,
          },
          incremental_selection = {
            enable = true,
            keymaps = {
              init_selection = "gnn",
              node_incremental = "grn",
              scope_incremental = "grc",
              node_decremental = "grm",
            },
          },
          indent = {
            enable = true,
          },
          textobjects = {
            select = {
              enable = true,
              lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
              keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
              },
            },
            move = {
              enable = true,
              set_jumps = true, -- whether to set jumps in the jumplist
              goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
              },
              goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer",
              },
              goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
              },
              goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer",
              },
            },
          },
        })
      end,
    })
  end,
}
