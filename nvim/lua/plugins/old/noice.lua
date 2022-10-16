-- https://github.com/windwp/nvim-autopairs
return {
  setup = function(use)
    use({
     "folke/noice.nvim",
      event = "VimEnter",
      requires = {      
        'rcarriga/nvim-notify',
        "MunifTanjim/nui.nvim"
      },
      config = function()
        vim.go.lazyredraw = true
        require("noice").setup({
          cmdline = {
            enabled = true, 
            view = "cmdline_popup", 
            opts = { buf_options = { filetype = "vim" } }, 
            icons = {
              ["/"] = { icon = " ", hl_group = "DiagnosticWarn" },
              ["?"] = { icon = " ", hl_group = "DiagnosticWarn" },
              [":"] = { icon = " ", hl_group = "DiagnosticInfo", firstc = false },
            },
          },
          messages = { enabled = true},
          popupmenu = { enabled = false, backend = "nui" },
          notify = { enabled = true},
          routes = {
            {
              filter = {
                event = "msg_show",
                kind = "",
                find = "written",
              },
              opts = { skip = true },
            },
          },
        })
      end,
    })
  end,
}
