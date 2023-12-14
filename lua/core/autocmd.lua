
-- mfussenegger/nvim-lint
-- https://github.com/mfussenegger/nvim-lint#usage
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end
})

vim.lsp.set_log_level("debug")
-- https://docs.rubocop.org/rubocop/usage/lsp.html
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  callback = function()
    vim.lsp.start {
      name = "rubocop",
      cmd = { "bundle", "exec", "rubocop", "--lsp" }
    }
  end
})
