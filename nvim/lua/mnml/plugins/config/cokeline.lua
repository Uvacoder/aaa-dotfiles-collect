-- https://github.com/noib3/nvim-cokeline
return {
  setup = function(use)
    use({
      "noib3/nvim-cokeline",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        local get_hex = require('cokeline/utils').get_hex
        local mappings = require('cokeline/mappings')

        local normal_bg =  get_hex("Normal", "bg")
        local comments_fg = get_hex('Comment', 'fg')

        local white_fg = '#ffffff'
        local green_fg = vim.g.mnml.ui.colors.success
        local errors_fg = vim.g.mnml.ui.colors.error
        local warnings_fg = vim.g.mnml.ui.colors.warn
        local infos_fg = vim.g.mnml.ui.colors.info
        local hints_fg = vim.g.mnml.ui.colors.hint

        local components = {
          space = {
            text = ' ',
            truncation = { priority = 1 }
          },

          two_spaces = {
            text = '  ',
            truncation = { priority = 1 },
          },

          separator = {
            text = function(buffer)
              return buffer.index ~= 1 and ' ' or ' '
            end,
            truncation = { priority = 1 }
          },

          devicon = {
            text = function(buffer)
              return buffer.devicon.icon
            end,
            fg = function(buffer)
              return buffer.devicon.color
            end,
            truncation = { priority = 1 }
          },

          index = {
            text = function(buffer)
              return buffer.index .. ': '
            end,
            truncation = { priority = 1 }
          },

          unique_prefix = {
            text = function(buffer)
              return buffer.unique_prefix
            end,
            fg = comments_fg,
            style = 'italic',
            truncation = {
              priority = 3,
              direction = 'left',
            },
          },

          filename = {
            text = function(buffer)
              return buffer.filename
            end,
            style = function(buffer)
              return (buffer.is_focused and 'bold') or nil
            end,
            truncation = {
              priority = 2,
              direction = 'left',
            },
          },

          diagnostics = {
            text = function(buffer)
              return
                (buffer.diagnostics.errors ~= 0 and '  ' .. buffer.diagnostics.errors)
                or (buffer.diagnostics.warnings ~= 0 and '  ' .. buffer.diagnostics.warnings)
                or (buffer.diagnostics.infos ~= 0 and ' ﲉ ' .. buffer.diagnostics.infos)
                or (buffer.diagnostics.hints ~= 0 and '  ' .. buffer.diagnostics.hints)
                or ''
            end,
            fg = function(buffer)
              return
                (buffer.diagnostics.errors ~= 0 and errors_fg)
                or (buffer.diagnostics.warnings ~= 0 and warnings_fg)
                or (buffer.diagnostics.infos ~= 0 and infos_fg)
                or (buffer.diagnostics.hints ~= 0 and hints_fg)
                or nil
            end,
            truncation = { priority = 1 },
          },

          close_or_unsaved = {
            text = function(buffer)
              return buffer.is_modified and "" or ''
            end,
            fg = function(buffer)
              return buffer.is_modified and green_fg or nil
            end,
            truncation = { priority = 1 },
          },
        }

        require('cokeline').setup({
          show_if_buffers_are_at_least = 1,

          buffers = {
            new_buffers_position = 'next',
          },

          rendering = {
            max_buffer_width = 30,
          },

          default_hl = {
            fg = function(buffer)
              return buffer.is_focused and '#FFFFFF' or comments_fg
            end,
            bg = normal_bg,
          },

          components = {
            components.space,
            components.separator,
            components.space,
            components.index,
            components.unique_prefix,
            components.devicon,
            components.space,
            components.filename,
            components.diagnostics,
            components.two_spaces,
            components.close_or_unsaved,
            components.space,
          },
        })

        local map = vim.api.nvim_set_keymap

        for i = 1,9 do
          map('n', ('<Leader>%s'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), { silent = true })
        end

      end,
    })
  end,
}
