-----------------------------------------------------------
-- Autocomplete setup
-- Ref: https://github.com/hrsh7th/nvim-cmp
-----------------------------------------------------------


local cmp_status_ok, cmp = pcall(require, 'cmp')
if not cmp_status_ok then
  return
end

local select_opts = {behavior = cmp.SelectBehavior.Select}

local is_empty_line = function()
  local line = vim.fn.getline('.')
  return line:match("%S") == nil
end

cmp.setup {
  completion = {
    keyword_length = 2
  },

  enabled = true,

  formatting = {
    fields = {'menu', 'abbr', 'kind'},
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        luasnip = 's',
        buffer = 'b',
        path = 'p',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },

  mapping = {
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' }
  },
}
