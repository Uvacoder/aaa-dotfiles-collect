return {
  setup = function(use)
    use({
      "tanvirtin/vgit.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("vgit").setup({
          settings = {
            authorship_code_lens = { enabled = true },
            live_blame = { enabled = true },
          },
        })
      end,
    })
  end,
}
