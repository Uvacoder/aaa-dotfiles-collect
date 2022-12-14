return {
  setup = function(use)
    use({
      "rcarriga/nvim-notify",
      config = function()
        local notify = require("notify")
        notify.setup({
          stages = "static",
          render = "minimal",
        })
        vim.notify = notify

        -- :Notifications
      end,
    })
  end,
}
