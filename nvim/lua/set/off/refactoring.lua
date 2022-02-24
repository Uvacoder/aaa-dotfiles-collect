return {
  setup = function(use)
    use({
      "ThePrimeagen/refactoring.nvim",

      requires = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-treesitter/nvim-treesitter" },
      },

      config = function()
        require("refactoring").setup({})
        -- Remaps for each of the four debug operations currently offered by the plugin
        vim.keymap.set("v", "<Leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], { noremap = true, silent = true, expr = false })
        vim.keymap.set("v", "<Leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], { noremap = true, silent = true, expr = false })
        vim.keymap.set("v", "<Leader>rv", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], { noremap = true, silent = true, expr = false })
        vim.keymap.set("v", "<Leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], { noremap = true, silent = true, expr = false })
      end,
    })
  end,
}
