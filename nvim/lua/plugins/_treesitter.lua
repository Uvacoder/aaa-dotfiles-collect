require('nvim-treesitter.configs').setup({
  ensure_installed = 'maintained',
  highlight = {enable = true, use_languagetree = true},
  indent = {enable = true},
  rainbow = {enable = true},
  disable = {
    'c', 'c_sharp', 'clojure', 'cpp', 'dart', 'erlang', 'fennel', 'Godot', 'go',
    'java', 'julia', 'kotlin', 'nix', 'ocaml', 'ocaml_interface', 'ocamllex',
    'php', 'rst', 'ruby', 'rust', 'sparql', 'teal', 'toml', 'turtle', 'verilog'
  },
})
