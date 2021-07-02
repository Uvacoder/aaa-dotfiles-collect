require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "css", "lua", "html", "bash", "vue", "javascript", "json", 
    "graphql", "php", "ruby", "typescript", "regex", "jsonc" 
  },
  rainbow = {enable = true},
  indent = { enable = true },
  autotag = { enable = true },
  highlight = {
    enable = true,
    language_tree = true
  },
  refactor = {
    highlight_current_scope = { enable = false },
    highlight_definitions = { enable = true }
  },
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner"
      }
    }
  }
}
