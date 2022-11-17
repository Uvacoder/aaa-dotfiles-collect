-- https://github.com/nvim-lualine/lualine.nvim
return {
  setup = function(use)
    use({
      "nvim-lualine/lualine.nvim",
      config = function()
        local colors = { bg = "#13121D", fg = "#7AA2F7" }
        local diff = { "diff", colored = false }
        local diagnostics = { "diagnostics", sections = { "error", "warn" } }

        local lsp_active = function()
          local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
          if vim.tbl_count(vim.lsp.buf_get_clients()) > 0 then
            local names = {}
            for _, client in ipairs(vim.lsp.get_active_clients()) do
              local filetypes = client.config.filetypes
              if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                table.insert(names, client.name)
              end
            end
            return table.concat(names, " ")
          end
          return ""
        end

        require("lualine").setup({
          options = {
            globalstatus = true,
            icons_enabled = false,
            component_separators = { left = "", right = "" },
            theme = {
              normal = { c = { fg = colors.fg, bg = colors.bg } },
              inactive = { c = { fg = colors.fg, bg = colors.bg } },
            },
          },
          sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_y = {},
            lualine_z = {},
            lualine_c = { "branch", diff, diagnostics },
            lualine_x = { lsp_active, "location", "encoding" },
          },
        })
      end,
    })
  end,
}
