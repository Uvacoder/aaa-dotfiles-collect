return {
  setup = function(use)
    use({
      "numToStr/FTerm.nvim",
      config = function()
        require("FTerm").setup({
          dimensions = { height = 0.8, width = 0.8 },
          hl = "FloatBorder",
        })

        local opts = { noremap = true, silent = true }
        vim.keymap.set("n", ";", '<CMD>lua require("FTerm").toggle()<CR>', opts)
        vim.keymap.set("t", ";", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
      end,
    })
  end,
}
