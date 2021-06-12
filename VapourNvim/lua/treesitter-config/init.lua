require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "css", "lua", "html", "bash", "vue", "javascript", "json", 
    "graphql", "php", "ruby", "typescript", "regex", "jsonc" 
  },
  highlight = {enable = true, use_languagetree = true},
  context_commentstring = {enable = true},
  -- indent = {enable = {"javascriptreact"}},
  autotag = {enable = true},
  rainbow = {enable = true}
}
