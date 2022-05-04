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
        require("nvim-treesitter.configs").setup({
          ensure_installed = { "css", "lua", "html", "vue", "javascript", "json", "typescript", "regex" },
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
            filetypes = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue", "tsx", "jsx" },
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