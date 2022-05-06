return {
  setup = function(use)
    use({
      "lewis6991/gitsigns.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("gitsigns").setup({
          signs = {
            add = { text = "│" },
            change = { text = "│" },
            delete = { text = "│" },
            topdelete = { text = "│" },
            changedelete = { text = "│" },
          },
        })
      end,

      vim.keymap.set("n", "gt", "<cmd>Gitsigns toggle_current_line_blame<cr>"),
    })
  end,
}
