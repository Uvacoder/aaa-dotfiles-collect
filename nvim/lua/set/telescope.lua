return {
  setup = function(use)
    use({
      "nvim-telescope/telescope.nvim",

      requires = {
        { "nvim-lua/popup.nvim", opt = true },
        { "nvim-lua/plenary.nvim", opt = true },
      },

      config = function()
        local actions = require("telescope.actions")
        require("telescope").setup({
          defaults = {
            file_ignore_patterns = { "node_modules", ".git" },
            mappings = {
              i = {
                ["<esc>"] = actions.close,
                ["<C-u>"] = false,
                ["<C-d>"] = false,
              },
            },
          },
        })

        vim.api.nvim_set_keymap("n", "<leader><space>", ":Telescope buffers<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "ff", ":Telescope find_files<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "fs", ":Telescope grep_string<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "fg", ":Telescope live_grep<cr>", { noremap = true, silent = true })
        -- git navigation
        vim.api.nvim_set_keymap("n", "<leader>ggc", ":Telescope git_commits<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>ggs", ":Telescope git_status<cr>", { noremap = true, silent = true })
      end,
    })
  end,
}
