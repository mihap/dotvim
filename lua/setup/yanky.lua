-----------------------------------------------------------
-- Indent blankline setup
-- Ref: https://github.com/lukas-reineke/indent-blankline.nvim
-----------------------------------------------------------

--
-- local status_ok, yanky = pcall(require, 'yanky.nvim')
-- if not status_ok then
--   return
-- end

require('yanky').setup ({
  picker = {
    select = {
      action = nil, -- nil to use default put action
    },
    telescope = {
      use_default_mappings = true, -- if default mappings should be used
      mappings = nil, -- nil to use default mappings or no mappings (see `use_default_mappings`)
    },
  },
  highlight = {
    on_put = false,
    on_yank = false,
    timer = 0,
  },
})
