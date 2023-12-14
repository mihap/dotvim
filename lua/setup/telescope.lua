-----------------------------------------------------------
-- Telescope setup
-- Ref: https://github.com/nvim-treesitter/nvim-treesitter
----------------------------------------------------------


local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

require('telescope').load_extension('fzf')
require('telescope').load_extension('yank_history')

require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      preview_height = 0.7,
      vertical = {
        width = 0.99,
      }
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
  -- other configuration values here
})
