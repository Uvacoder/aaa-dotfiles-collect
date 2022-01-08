return {
  setup = function(use)
    use({
      "folke/trouble.nvim",

      -- requires = "kyazdani42/nvim-web-devicons",

      config = function()
        require("trouble").setup({
          icons = false,
          position = "bottom",
          height = 10,
          width = 50,
          mode = "workspace_diagnostics",
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
          use_diagnostic_signs = true,
        })

        vim.api.nvim_set_keymap("n", "tt", "<cmd>TroubleToggle<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "tf", "<cmd>TroubleToggle quickfix<cr>", { noremap = true, silent = true })
      end,
    })
  end,
}
