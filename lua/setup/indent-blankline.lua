-----------------------------------------------------------
-- Indent blankline setup
-- Ref: https://github.com/lukas-reineke/indent-blankline.nvim
-----------------------------------------------------------

--
local status_ok, ibl = pcall(require, 'ibl')
if not status_ok then
  return
end

ibl.setup ({
  indent = {
    char = "▏",
  },
  -- use_treesitter = true,
  scope = { enabled = false },
  -- https://github.com/lukas-reineke/indent-blankline.nvim/issues/713
  -- show_first_indent_level = true,
  -- buftype_exclude = {
  --   'terminal',
  --   'nofile',
  --   'quickfix',
  --   'prompt',
  -- }
})
