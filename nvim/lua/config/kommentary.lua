return {
  setup = function(use)
    use({
      'b3nj5m1n/kommentary',
      requires = { 'JoosepAlviste/nvim-ts-context-commentstring' },
      config = function()
        require('kommentary.config').configure_language('default', {
          prefer_single_line_comments = true,
          use_consistent_indentation = true,
          ignore_whitespace = true,
        })

        local defaults = {
          -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring#kommentary
          single_line_comment_string = 'auto',
          multi_line_comment_strings = 'auto',
          hook_function = function()
            require('ts_context_commentstring.internal').update_commentstring()
          end,
        }

        local languages = {
          'javascript',
          'typescript',
          'typescriptreact',
          'vue',
          'json',
          'lua',
          'html',
          'sh',
          'astro',
          'css',
          'scss',
        }

        for _, language in ipairs(languages) do
          require('kommentary.config').configure_language(language, defaults)
        end

        vim.api.nvim_set_keymap('n', 'gcc', '<Plug>kommentary_line_default', {})
        vim.api.nvim_set_keymap('n', 'gc', '<Plug>kommentary_motion_default', {})
        vim.api.nvim_set_keymap('v', 'gc', '<Plug>kommentary_visual_default<C-c>', {})
      end,
    })
  end,
}
