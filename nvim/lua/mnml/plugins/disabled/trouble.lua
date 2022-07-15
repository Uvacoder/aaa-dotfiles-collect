return {
  setup = function(use)
    use({
      "folke/trouble.nvim",
      -- requires = "kyazdani42/nvim-web-devicons",
      config = function()
        local map = require("mnml.utils").map

        require("trouble").setup({
          position = "bottom",
          height = 5,
          width = 100,
          icons = false,
          mode = "workspace_diagnostics",
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

        map("n", "tt", "<cmd>Trouble<cr>")
      end,
    })
  end,
}
