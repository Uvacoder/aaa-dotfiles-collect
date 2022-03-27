return {
  setup = function(use)
    use({
      "numToStr/FTerm.nvim",

      config = function()
        require("FTerm").setup({
          dimensions = { height = 0.9, width = 0.8 },
          hl = "FloatBorder",
        })

        vim.keymap.set("n", "<C-\\>", '<CMD>lua require("FTerm").toggle()<CR>')
        vim.keymap.set("t", "<C-\\>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
      end,
    })
  end,
}
