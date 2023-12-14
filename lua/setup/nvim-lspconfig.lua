-----------------------------------------------------------
-- Neovim LSP setup
-- Ref: https://github.com/neovim/nvim-lspconfig
-----------------------------------------------------------


local lsp_status_ok, lspconfig = pcall(require, 'lspconfig')
if not lsp_status_ok then
  return
end

local cmp_status_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not cmp_status_ok then
  return
end


-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmp_nvim_lsp.default_capabilities(capabilities)


-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = { 'bashls', 'pyright', 'html', 'ruby_ls', 'cssls', 'tsserver' }

-- Call setup
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities
  }
end
