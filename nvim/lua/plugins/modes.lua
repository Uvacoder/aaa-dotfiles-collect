--[[ https://github.com/mvllow/modes.nvim ]]
return {
  setup = function(use)
    use({
      "mvllow/modes.nvim",
      config = function()
        require("modes").setup({
          colors = {
            copy = "#FFC600",
            delete = "#ff007c",
            insert = "#000000", -- '#0D0914',  --'#0088FF',
            visual = "#A400FF",
          },
          line_opacity = 0.35,
          set_cursor = true,
          set_cursorline = true,
          set_number = false,
          -- ignore_filetypes = { 'Neo-tree', 'NvimTree', 'TelescopePrompt' },
        })
      end,
    })
  end,
}
