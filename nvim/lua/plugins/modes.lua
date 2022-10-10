--[[ https://github.com/mvllow/modes.nvim ]]
return {
  setup = function(use)
    use({
      'mvllow/modes.nvim',
      config = function()
        require('modes').setup({
          colors = {
            copy = '#FFC600',
            delete = '#FF0000',
            insert = '#0088FF',
            visual = '#A400FF',
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
