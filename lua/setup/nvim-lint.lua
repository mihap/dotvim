-----------------------------------------------------------
-- Linters setup
-- Ref: https://github.com/mfussenegger/nvim-lint
-----------------------------------------------------------


require('lint').linters_by_ft = {
  javascript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' }
}
