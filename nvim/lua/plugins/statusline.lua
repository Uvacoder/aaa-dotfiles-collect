-- https://github.com/nvim-lualine/lualine.nvim
return {
  setup = function(use)
    use({
      "nvim-lualine/lualine.nvim",
      config = function()
        local filetype = { "filetype", icons_enabled = false }

        local location = {}

        local diff = { "diff", colored = false }

        local d = { "diagnostics", sections = { "error", "warn" } }

        local lsp_active = function()
          local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
          if vim.tbl_count(vim.lsp.buf_get_clients()) == 0 then
            return ""
          end
          local names = {}
          for _, client in ipairs(vim.lsp.get_active_clients()) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
              table.insert(names, client.name)
            end
          end
          return "  " .. table.concat(names, ",")
        end

        require("lualine").setup({
          options = {
            globalstatus = true,
            icons_enabled = true,
            theme = "iceberg_dark",
            component_separators = { left = "", right = "" },
            section_separators = { left = " ", right = " " },
            always_divide_middle = false,
          },
          sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { "branch", diff, diagnostics },
            lualine_x = { filetype, "encoding", "location", lsp_active },
            lualine_y = {},
            lualine_z = {},
          },
        })
      end,
    })
  end,
}
