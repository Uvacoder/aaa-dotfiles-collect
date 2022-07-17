return {
  setup = function(use)
    use({
      "dyng/ctrlsf.vim",
      config = function()
        -- vim.g.ctrlsf_case_sensitive = "yes"
        -- vim.g.trlsf_default_root = "project"
        -- vim.g.ctrlsf_fold_result = 0
        -- vim.g.ctrlsf_auto_preview = 0
        -- vim.g.ctrlsf_search_mode = "async"
        -- vim.g.ctrlsf_auto_focus = { at = "done", duration_less_than = 1000 }
        -- vim.g.ctrlsf_backend
        vim.g.ctrlsf_mapping = {
          next = "n",
          prev = "N",
        }
      end,
    })
  end,
}
