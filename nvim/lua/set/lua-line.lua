return {
  setup = function(use)
    use({
      "hoob3rt/lualine.nvim",

      requires = {
        "kyazdani42/nvim-web-devicons",
      },

      config = function()
        local colors = vim.g.my_colors
        local ui_colors = vim.g.my_ui_colors

        local mode_color = {
          n = ui_colors.fg,
          i = colors.green,
          v = colors.blue,
          [""] = colors.blue,
          V = colors.blue,
          c = colors.purple,
          no = ui_colors.fg,
          s = colors.orange,
          S = colors.orange,
          [""] = colors.orange,
          ic = colors.yellow,
          R = colors.red,
          Rv = colors.red,
          cv = colors.purple,
          ce = colors.purple,
          r = colors.red,
          rm = colors.red,
          ["r?"] = colors.white,
          ["!"] = ui_colors.fg,
          t = colors.white,
        }

        local lualine = require("lualine")

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
            icons_enabled = true,
            -- Disable sections and component separators
            component_separators = "",
            section_separators = "",
            theme = {
              normal = { c = { fg = ui_colors.fg, bg = ui_colors.bg_alt } },
              inactive = { c = { fg = ui_colors.fg, bg = ui_colors.bg_alt } },
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
          inactive_sections = {},
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
          -- battery component
          "%{battery#component()}",
          color = { fg = ui_colors.fg, bg = ui_colors.bg_alt },
          padding = { left = 1 },
        })

        ins_left({
          -- mode component
          "mode",
          color = function()
            return { fg = mode_color[vim.fn.mode()] }
          end,
          padding = { left = 2 },
        })

        ins_left({
          "diagnostics",
          sources = { "nvim_diagnostic" },
          -- symbols = { error = 'E:', warn = 'W:', info = 'I:', hint = 'H:' },

          symbols = { error = vim.g.my_icons.error, warn = vim.g.my_icons.warning, info = vim.g.my_icons.info, hint = vim.g.my_icons.hint },
          diagnostics_color = {
            color_error = { fg = colors.red },
            color_warn = { fg = colors.yellow },
            color_info = { fg = colors.blue },
            color_hint = { fg = colors.white },
          },
          padding = { left = 3 },
        })

        ins_left({
          "filetype",
          colored = true,
          icon_only = true,
          padding = { left = 2 },
          cond = conditions.buffer_not_empty,
        })

        ins_left({
          "filename",
          symbols = {
            modified = " ", -- Text to show when the file is modified.
            readonly = " ", -- Text to show when the file is non-modifiable or readonly.
            unnamed = "[No Name]", -- Text to show for unnamed buffers.
          },
          cond = conditions.buffer_not_empty,
          color = { fg = colors.white },
        })

        ins_left({ "location" })
        ins_left({ "progress", color = { fg = ui_colors.fg } })

        -- Insert mid section. You can make any number of sections in neovim :)
        -- for lualine it's any number greater then 2
        ins_left({
          function()
            return "%="
          end,
        })

        ins_left({ "lsp_progress", color = { fg = ui_colors.fg } })

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
          color = { fg = ui_colors.fg },
        })

        -- Add components to right sections
        ins_right({
          "fileformat",
          icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
          padding = { right = 1 },
          color = { fg = ui_colors.fg },
        })

        ins_right({
          "o:encoding", -- option component same as &encoding in viml
          icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
          -- fmt = string.upper, -- I'm not sure why it's upper case either ;)
          cond = conditions.hide_in_width,
          padding = { right = 2 },
          color = { fg = ui_colors.fg },
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
          symbols = { added = vim.g.my_icons.add, modified = vim.g.my_icons.change, removed = vim.g.my_icons.delete },
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
