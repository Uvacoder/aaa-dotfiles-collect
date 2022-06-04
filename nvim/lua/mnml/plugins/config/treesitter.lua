return {
  setup = function(use)
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      requires = {
        "p00f/nvim-ts-rainbow",
        "windwp/nvim-ts-autotag",
        "terrortylor/nvim-comment",
        "JoosepAlviste/nvim-ts-context-commentstring",
      },
      config = function()
        local treesitter_langs = require("mnml.config").treesitter_langs
        local treesitter_autotags = require("mnml.config").treesitter_autotags

        require("nvim-treesitter.configs").setup({
          ensure_installed = treesitter_langs,
          highlight = { enable = true, additional_vim_regex_highlighting = false },
          indent = { enable = true },
          incremental_selection = {
            enable = true,
            keymaps = {
              init_selection = "gnn",
              code_incremental = "grn",
              scope_incremental = "grc",
              node_decremental = "grm",
            },
          },
          -- rainbow
          rainbow = { enable = true, extended_mode = true, max_file_lines = nil },
          -- autotag
          autotag = {
            enable = true,
            filetypes = treesitter_autotags,
          },
          -- commentstring
          context_commentstring = { enable = true, enable_autocmd = false },
        })

        require("nvim_comment").setup({
          hook = function()
            if vim.api.nvim_buf_get_option(0, "filetype") == "vue" then
              require("ts_context_commentstring.internal").update_commentstring()
            end
          end,
        })
      end,
    })
  end,
}
