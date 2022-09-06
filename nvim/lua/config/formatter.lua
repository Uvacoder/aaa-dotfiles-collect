-- https://github.com/mhartington/formatter.nvim
return {
  setup = function(use)
    use({
      'mhartington/formatter.nvim',
      config = function()
        local util = require('formatter.util')

        local function luastyle()
          return {
            exe = 'stylua',
            args = {
              '--search-parent-directories',
              '--stdin-filepath',
              util.escape_path(util.get_current_buffer_file_path()),
              '--',
              '-',
            },
            stdin = true,
          }
        end

        local function prettier()
          return {
            exe = 'prettier',
            args = {
              '--stdin-filepath',
              vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
            },
            stdin = true,
          }
        end

        local function eslint()
          return {
            exe = 'eslint',
            args = {
              '--fix',
              '--stdin',
              '--stdin-filename',
              vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
            },
            stdin = true,
          }
        end

        local function prettier_d()
          return {
            exe = 'prettierd',
            args = { vim.api.nvim_buf_get_name(0) },
            stdin = true,
          }
        end

        local function eslint_d()
          return {
            exe = 'eslint_d',
            args = {
              '--fix-to-stdout',
              '--stdin',
              '--stdin-filename',
              vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
            },
            stdin = true,
          }
        end

        require('formatter').setup({
          logging = false,
          ['*'] = {
            require('formatter.filetypes.any').remove_trailing_whitespace,
          },
          filetype = {
            vue = { prettier, eslint },
            javascript = { prettier, eslint },
            typescript = { prettier, eslint },
            json = { prettier },
            scss = { prettier },
            astro = { prettier },
            lua = { luastyle },
          },
        })

        local map = require('utils').map

        map('n', 'ff', '<CMD>Format<CR>')
        map('n', 'ww', '<CMD>FormatWrite<CR>')
      end,
    })
  end,
}
