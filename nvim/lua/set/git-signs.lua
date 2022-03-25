return {
  setup = function(use)
    use({
      "lewis6991/gitsigns.nvim",

      requires = { "nvim-lua/plenary.nvim" },

      config = function()
        require("gitsigns").setup({
          signs = {
            add = { hl = "GitSignsAdd", text = vim.g.my_icons.diff.add, numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
            change = { hl = "GitSignsChange", text = vim.g.my_icons.diff.change, numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
            delete = { hl = "GitSignsDelete", text = vim.g.my_icons.diff.delete, numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
            topdelete = { hl = "GitSignsDelete", text = vim.g.my_icons.diff.delete, numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
            changedelete = { hl = "GitSignsDelete", text = vim.g.my_icons.diff.delete, numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
          },
        })
      end,
    })
  end,
}
