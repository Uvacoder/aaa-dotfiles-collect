return {
  setup = function(use)
    use {
      'projekt0n/github-nvim-theme',

      config = function()
        require("github-theme").setup({
          theme_style =	"dark",
          transparent = true,
          hide_end_of_buffer = true,
          sidebars = {"qf", "vista_kind", "terminal", "packer"},
          colors = {hint = "orange", error = "#ff0000"}
        })

        -- fix colors
        vim.api.nvim_command("hi! EndOfBuffer guifg=#000000")
        vim.api.nvim_command("hi! NonText guifg=#000000")
      end
    }
  end
}
