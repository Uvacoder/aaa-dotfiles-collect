return {
  setup = function(use)
    use({
      "folke/trouble.nvim",

      requires = "kyazdani42/nvim-web-devicons",

      config = function()
        require("trouble").setup({
          position = "bottom",
          height = 10,
          width = 50,
          icons = false,
          mode = "lsp_workspace_diagnostics", -- "lsp_workspace_diagnostics", "lsp_document_diagnostics", "quickfix", "lsp_references", "loclist"
          action_keys = {
            close = "q",
            cancel = "<esc>",
            refresh = "r",
            jump = { "<cr>", "<tab>" },
          },
          indent_lines = true,
          auto_open = false,
          auto_close = true,
          auto_preview = true,
          auto_fold = false,
          use_lsp_diagnostic_signs = true,
        })

        vim.api.nvim_set_keymap("n", "tt", "<cmd>LspTroubleToggle<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "tf", "<cmd>Trouble quickfix<cr>", { noremap = true, silent = true })
      end,
    })
  end,
}
