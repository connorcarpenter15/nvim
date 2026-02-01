return {
  "dense-analysis/ale",
  config = function()
    local g = vim.g

    g.ale_ruby_rubocop_auto_correct_all = 1

    g.ale_linters = {
      ruby = { "rubocop", "ruby" },
      lua = { "lua_language_server" },
      sml = { "millet" },
    }

    g.ale_fixers = {
      sml = { "millet" },
    }
    g.ale_sml_millet_executable = "millet-ls"
    g.ale_fix_on_save = 1
  end,
}
