return {
  setup = function(use)
    use {
      'lewis6991/spellsitter.nvim',

      config = function()
        require('spellsitter').setup()

        vim.cmd('hi SpellBad gui=undercurl')
      end
    }
  end
}
