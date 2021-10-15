return {
  setup = function(use)
    use({
      "lewis6991/spellsitter.nvim",

      config = function()
        require("spellsitter").setup({
          hl = "SpellBad",
          captures = { "comment" },  -- set to {} to spellcheck everything
        })

        vim.cmd("hi SpellBad gui=undercurl")
      end,
    })
  end,
}
