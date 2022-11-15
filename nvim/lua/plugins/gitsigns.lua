-- https://github.com/lewis6991/gitsigns.nvim
return {
  setup = function(use)
    use({
      "lewis6991/gitsigns.nvim",
      config = function()
        require("gitsigns").setup({
          signs = {
            add = {
              hl = "GitSignsAdd",
              text = vim.g.git_signs.basic,
              numhl = "GitSignsAddNr",
              linehl = "GitSignsAddLn",
            },
            change = {
              hl = "GitSignsChange",
              text = vim.g.git_signs.basic,
              numhl = "GitSignsChangeNr",
              linehl = "GitSignsChangeLn",
            },
            delete = {
              hl = "GitSignsDelete",
              text = vim.g.git_signs.basic,
              numhl = "GitSignsDeleteNr",
              linehl = "GitSignsDeleteLn",
            },
            topdelete = {
              hl = "GitSignsDelete",
              text = vim.g.git_signs.basic,
              numhl = "GitSignsDeleteNr",
              linehl = "GitSignsDeleteLn",
            },
            changedelete = {
              hl = "GitSignsChange",
              text = vim.g.git_signs.basic,
              numhl = "GitSignsChangeNr",
              linehl = "GitSignsChangeLn",
            },
          },
          preview_config = {
            border = vim.g.border_style,
            style = "minimal",
            relative = "cursor",
            row = 0,
            col = 1,
          },
        })

        local keymap = vim.keymap.set
        local opts = { silent = true }

        keymap("n", "<Leader>gd", require("gitsigns").diffthis, opts)
      end,
    })
  end,
}
