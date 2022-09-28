return {
  setup = function(use)
    use({
      'rcarriga/nvim-notify',
      config = function()
        local notify = require('notify')
        notify.setup({
          stages = 'static',
          render = 'minimal',
          minimum_width = 10,
        })
        vim.notify = notify

        -- :Notifications

        -- local hl_fg_bg = require('utils').hl_fg_bg
        -- hl_fg_bg('NotifyERRORBody', '#ffffff', '#8A1F1F')
        -- hl_fg_bg('NotifyERRORBorder', '#ffffff', '#8A1F1F')
        -- hl_fg_bg('NotifyWARNBody', '#ffffff', '#79491D')
        -- hl_fg_bg('NotifyWARNBorder', '#ffffff', '#79491D')
        -- hl_fg_bg('NotifyINFOBody', '#000000', '#4F6752')
        -- hl_fg_bg('NotifyINFOBorder', '#000000', '#4F6752')
      end,
    })
  end,
}
