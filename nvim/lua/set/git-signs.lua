return {
  setup = function(use)
    use({
      "lewis6991/gitsigns.nvim",

      requires = { "nvim-lua/plenary.nvim" },

      config = function()
        require("gitsigns").setup({
          signs = {
            add = { hl = "GitSignsAdd", text = vim.g.my_icons.add, numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
            change = { hl = "GitSignsChange", text = vim.g.my_icons.change, numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
            delete = { hl = "GitSignsDelete", text = vim.g.my_icons.delete, numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
            topdelete = { hl = "GitSignsDelete", text = vim.g.my_icons.delete, numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
            changedelete = { hl = "GitSignsDelete", text = vim.g.my_icons.delete, numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
          },
        })
      end,
    })
  end,
}
