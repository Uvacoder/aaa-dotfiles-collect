return {
  setup = function(use)
    use {
      'lukas-reineke/format.nvim',

      config = function()
        require("format").setup{
          -- remove trailing whitespace 
          ["*"] = {{cmd = {"sed -i 's/[ \t]*$//'"}}}, 
          -- javascript = {{cmd = {"prettier -w", "eslint --fix"}}},
          -- vue = {{cmd = {"prettier -w", "eslint --fix"}}},
          javascript = {{cmd = {"prettier -w"}}},
          vue = {{cmd = {"prettier -w"}}},
          html = {{cmd = {"prettier -w"}}},
          svg = {{cmd = {"prettier -w"}}},
          css = {{cmd = {"prettier -w"}}},
          json = {{cmd = {"prettier -w"}}},
          markdown = {
            {cmd = {"prettier -w"}},
            {
              cmd = {"black"},
              start_pattern = "^```python$",
              end_pattern = "^```$",
              target = "current"
            }
          }
        }
        -- {cmd = {"./node_modules/.bin/prettier -w", "./node_modules/.bin/eslint --fix"}}
        vim.api.nvim_exec([[
          augroup FormatAutogroup
          autocmd!
          autocmd BufWritePost *.html,*.js,*.vue,*.css FormatWrite
          augroup END
        ]], true)
      end
    }
  end
}
