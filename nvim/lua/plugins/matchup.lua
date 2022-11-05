-- https://github.com/andymass/vim-matchup
return {
  setup = function(use)
    use({
      'andymass/vim-matchup',
      config = function()
        vim.g.loaded_matchit = 1
        vim.g.matchup_transmute_enabled = 1
        vim.g.matchup_matchparen_deferred = 1
        vim.g.matchup_matchparen_offscreen = { method = 'popup' }
        vim.g.matchup_matchparen_enabled = 1
        vim.g.matchup_matchpref = {
          astro = { tagnameonly = 1, },
          vue = { tagnameonly = 1, },
          typescriptreact = { tagnameonly = 1, },
          tsx = { tagnameonly = 1, },
          html = { tagnameonly = 1, },
        }
        vim.cmd[[
          hi MatchParen cterm=underline gui=underline
          hi MatchWord cterm=underline gui=underline
          hi MatchParenCur cterm=underline gui=underline
          hi MatchWordCur cterm=underline gui=underline
        ]]
      end,
    })
  end,
}
