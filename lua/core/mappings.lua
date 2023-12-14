-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-----------------------------------------------------------
-- Core
-----------------------------------------------------------
map('n', '<C-n>', ':nohl<CR>') -- Clear search highlights

-- Splits nav
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
-- keep selection after in/outdent
map('x', '>', '>gv')
map('x', '<', '<gv')

-----------------------------------------------------------
-- nvim-tree/nvim-tree.lua
-- Ref: https://github.com/nvim-tree/nvim-tree.lua
----------------------------------------------------------
map('n', '<C-p>', ':NvimTreeToggle<CR>')
map('n', '<leader>p', ':NvimTreeFindFile<CR>')


-----------------------------------------------------------
-- nvim-telescope/telescope.nvim
-- Ref: https://github.com/nvim-telescope/telescope.nvim
----------------------------------------------------------
-- local builtin = require('telescope.builtin')
map('n', '<leader>,', '<cmd>Telescope find_files<CR>')
map('n', '<leader>g', '<cmd>Telescope live_grep<CR>')
map('n', '<leader>f', '<cmd>Telescope grep_string<CR>')

-----------------------------------------------------------
-- Terminal mode
----------------------------------------------------------
map('t', '<Esc>', '<C-\\><C-n>')
map('t', '<C-v><Esc>', '<Esc>')

-----------------------------------------------------------
-- Git
----------------------------------------------------------
map('n', ':Gblame', ':Git blame')

-----------------------------------------------------------
-- Yaanky
----------------------------------------------------------

-- TODO: refactor this
map('n', '<leader>y', '<cmd>Telescope yank_history<CR>')
vim.keymap.set({"n","x"}, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({"n","x"}, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set("n", "<c-b>", "<Plug>(YankyCycleBackward)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyCycleForward)")

-----------------------------------------------------------
-- Tabs
-----------------------------------------------------------
map('n', '<C-+>', ':tabnext<CR>')
