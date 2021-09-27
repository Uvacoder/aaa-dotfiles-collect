-- download https://golang.org/doc/install and install go 
-- cd ~/.local/share/nvim/site/pack/packer/opt/vim-hexokinase && make hexokinase

return {
  setup = function(use)
    use {
      'rrethy/vim-hexokinase', 

      run = 'make hexokinase', 

      cmd = 'HexokinaseToggle',

      config = function()
        vim.g.Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla'
        vim.g.Hexokinase_highlighters = {'backgroundfull'}
        vim.g.Hexokinase_ftEnabled = {'lua', 'css', 'html', 'javascript', 'vue'}
      end
    }
  end
}
