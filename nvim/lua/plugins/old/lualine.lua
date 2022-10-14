-- https://github.com/nvim-lualine/lualine.nvim
return {
  setup = function(use)
    use({
      'nvim-lualine/lualine.nvim',
      config = function()
        local filetype = { 'filetype', icons_enabled = false }
        local location = { 'location', padding = 1 }
        local lsp_active = function()
          local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
          local clients = vim.lsp.get_active_clients()
          if next(clients) == nil then
            return ''
          end
          local names = {}
          for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
              table.insert(names, client.name)
            end
          end
          return table.concat(names, ' ')
        end

        require('lualine').setup({
          options = {
            globalstatus = true,
            icons_enabled = true,
            theme = 'horizon',
            component_separators = { left = '', right = '' },
            section_separators = { left = ' ', right = ' ' },
            always_divide_middle = false,
          },
          sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'branch', 'diagnostics', lsp_active },
            lualine_x = { 'encoding', filetype, location, 'progress' },
            lualine_y = {},
            lualine_z = {},
          },
        })
      end,
    })
  end,
}
