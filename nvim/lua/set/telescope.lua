return {
  setup = function(use)
    use({
      "nvim-telescope/telescope.nvim",
      requires = {
        { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
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

        require("telescope").load_extension("fzf")

        vim.api.nvim_set_keymap("n", "<leader><space>", [[<cmd>lua require('telescope.builtin').buffers({previewer = false})<CR>]], { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>f", [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>sd", [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>sp", [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
      end,
    })
  end,
}
