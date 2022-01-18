return {
  setup = function(use)
    use({
      "hoob3rt/lualine.nvim",

      requires = { "kyazdani42/nvim-web-devicons", opt = true },

      config = function()
        local lualine = require("lualine")

        -- Color table for highlights
        -- stylua: ignore
        local colors = {
          bg       = '#0D1117', --'#141B24', --'#000000', --'#090B10', '#121212',
          fg       = '#757575',
          blue     = '#0087FF',
          green    = '#00FF5F',
          yellow   = '#F6C177',
          red      = '#D70000',
          white    = '#ffffff',
        }

        local conditions = {
          buffer_not_empty = function()
            return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
          end,
          hide_in_width = function()
            return vim.fn.winwidth(0) > 80
          end,
          check_git_workspace = function()
            local filepath = vim.fn.expand("%:p:h")
            local gitdir = vim.fn.finddir(".git", filepath .. ";")
            return gitdir and #gitdir > 0 and #gitdir < #filepath
          end,
        }

        -- Config
        local config = {
          options = {
            icons_enabled = false,
            -- Disable sections and component separators
            component_separators = "",
            section_separators = "",
            theme = {
              normal = { c = { fg = colors.fg, bg = colors.bg } },
              inactive = { c = { fg = colors.fg, bg = colors.bg } },
            },
          },
          sections = {
            -- these are to remove the defaults
            lualine_a = {},
            lualine_b = {},
            lualine_y = {},
            lualine_z = {},
            -- These will be filled later
            lualine_c = {},
            lualine_x = {},
          },
          inactive_sections = {
            -- these are to remove the defaults
            -- lualine_a = {},
            -- lualine_b = {},
            -- lualine_v = {},
            -- lualine_y = {},
            -- lualine_z = {},
            -- lualine_c = {},
            -- lualine_x = {},
          },
          extensions = { "nvim-tree", "toggleterm" },
        }

        -- Inserts a component in lualine_c at left section
        local function ins_left(component)
          table.insert(config.sections.lualine_c, component)
        end

        -- Inserts a component in lualine_x ot right section
        local function ins_right(component)
          table.insert(config.sections.lualine_x, component)
        end

        ins_left({
          -- mode component
          "mode",
          color = { fg = colors.fg, bg = colors.bg },
          padding = { left = 1, right = 2 },
        })

        -- ins_left({
        --   "filetype",
        --   icon_only = true,
        --   padding = { left = 1 },
        --   cond = conditions.buffer_not_empty,
        -- })

        ins_left({
          "diagnostics",
          sources = { "nvim_diagnostic" },
          -- symbols = { error = 'E:', warn = 'W:', info = 'I:', hint = 'H:' },
          symbols = { error = " ", warn = " ", info = " ", hint = "ﴞ " },
          diagnostics_color = {
            color_error = { fg = colors.red },
            color_warn = { fg = colors.yellow },
            color_info = { fg = colors.blue },
            color_info = { fg = colors.fg },
          },
          padding = { left = 1, right = 1 },
        })

        ins_left({
          "filename",
          cond = conditions.buffer_not_empty,
          color = { fg = colors.white },
        })

        ins_left({ "location" })
        ins_left({ "progress", color = { fg = colors.fg } })

        -- Insert mid section. You can make any number of sections in neovim :)
        -- for lualine it's any number greater then 2
        ins_left({
          function()
            return "%="
          end,
        })

        ins_left({ "lsp_progress", color = { fg = colors.fg } })

        ins_left({
          -- Lsp server name .
          function()
            local msg = ""
            local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
            local clients = vim.lsp.get_active_clients()
            if next(clients) == nil then
              return msg
            end
            for _, client in ipairs(clients) do
              local filetypes = client.config.filetypes
              if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                return client.name
              end
            end
            return msg
          end,
          color = { fg = colors.fg },
        })

        -- Add components to right sections
        ins_right({
          "fileformat",
          -- icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
          padding = { right = 1 },
          color = { fg = colors.fg },
        })

        ins_right({
          "o:encoding", -- option component same as &encoding in viml
          -- icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
          -- fmt = string.upper, -- I'm not sure why it's upper case either ;)
          cond = conditions.hide_in_width,
          padding = { right = 2 },
          color = { fg = colors.fg },
        })

        ins_right({
          "branch",
          icon = "",
          color = { fg = "#ffffff" },
        })

        ins_right({
          "diff",
          -- Is it me or the symbol for modified us really weird
          -- symbols = { added = '+', modified = '~', removed = '-' },
          symbols = { added = " ", modified = " ", removed = " " },
          diff_color = {
            added = { fg = colors.green },
            modified = { fg = colors.yellow },
            removed = { fg = colors.red },
          },
          cond = conditions.hide_in_width,
        })

        -- Now don't forget to initialize lualine
        lualine.setup(config)
      end,
    })
  end,
}
