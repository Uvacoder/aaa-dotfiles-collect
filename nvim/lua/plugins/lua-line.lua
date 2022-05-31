return {
  setup = function(use)
    use({
      "hoob3rt/lualine.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        local LSPActive = function()
          local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
          local clients = vim.lsp.get_active_clients()
          if next(clients) == nil then
            return ""
          end
          local names = {}
          for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
              table.insert(names, client.name)
            end
          end
          return " " .. table.concat(names, " ")
        end

        local bg = vim.g.my.colors.statusline

        require("lualine").setup({
          options = {
            icons_enabled = false,
            theme = {
              normal = {
                a = { fg = vim.g.my.colors.blue, bg = bg, gui = "bold" },
                b = { fg = vim.g.my.colors.white, bg = bg, gui = "bold" },
                c = { fg = vim.g.my.colors.fg, bg = bg },
              },
              insert = { a = { fg = vim.g.my.colors.green, bg = bg, gui = "bold" } },
              visual = { a = { fg = vim.g.my.colors.yellow, bg = bg, gui = "bold" } },
              replace = { a = { fg = vim.g.my.colors.red, bg = bg, gui = "bold" } },
            },
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            disabled_filetypes = {},
            always_divide_middle = false,
            globalstatus = true,
          },
          diff_color = {
            added = { fg = vim.g.my.colors.green },
            modified = { fg = vim.g.my.colors.yellow },
            removed = { fg = vim.g.my.colors.red },
          },
          diagnostics_color = {
            color_error = { fg = vim.g.my.colors.red },
            color_warn = { fg = vim.g.my.colors.yellow },
            color_info = { fg = vim.g.my.colors.blue },
            color_hint = { fg = vim.g.my.colors.white },
          },
          sections = {
            lualine_a = { "mode" },
            lualine_b = { "diagnostics" },
            lualine_c = {
              { "filename", file_status = true, symbols = { modified = " " } },
              "location",
              "progress",
            },
            lualine_x = { "encoding", "fileformat" },
            lualine_y = { "branch" },
            lualine_z = { "diff", LSPActive },
          },
          inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
          },
          tabline = {},
          extensions = { "neo-tree" },
        })
      end,
    })
  end,
}
