return {
  setup = function(use)
    use({
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup({
          position = "bottom",
          height = 4,
          width = 50,
          icons = false,
          mode = "document_diagnostics",
          group = true,
          padding = true,
          action_keys = {
            close = "q",
            cancel = "<esc>",
            refresh = "r",
          },
          auto_open = false,
          auto_close = true,
          auto_preview = true,
          auto_jump = { "lsp_definitions" },
          use_diagnostic_signs = true,
        })

        vim.api.nvim_set_keymap("n", "tt", "<cmd>Trouble<cr>", { silent = true, noremap = true })
      end,
    })
  end,
}
