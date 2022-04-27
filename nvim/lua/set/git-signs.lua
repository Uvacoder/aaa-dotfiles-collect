return {
  setup = function(use)
    use({
      "lewis6991/gitsigns.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("gitsigns").setup({
          signs = {
            add = { text = vim.g.my.icons.diff.add },
            change = { text = vim.g.my.icons.diff.change },
            delete = { text = vim.g.my.icons.diff.delete },
            topdelete = { text = vim.g.my.icons.diff.delete },
            changedelete = { text = vim.g.my.icons.diff.delete },
          },
        })
      end,
    })
  end,
}
