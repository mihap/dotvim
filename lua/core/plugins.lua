-----------------------------------------------------------
-- Plugins
-----------------------------------------------------------
-- Refs:  https://github.com/rockerBOO/awesome-neovim
----------------------------------------------------------
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
  return
end

lazy.setup({
  spec = {
    {
      'tpope/vim-fugitive'
    },

    {
      'bluz71/vim-nightfly-colors',
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd [[colorscheme nightfly]]
      end
    },

    {
      'nvim-tree/nvim-web-devicons'
    },

    {
      'blueyed/vim-diminactive'
    },

    {
      'nvim-tree/nvim-tree.lua',
      dependencies = {
        'nvim-tree/nvim-web-devicons'
      },
      config = function()
        vim.opt.termguicolors = true
        require("nvim-tree").setup({
          view = {
            width = 40
          }
        })
      end
    },

    {
      'windwp/nvim-autopairs',
      config = function()
        require("nvim-autopairs").setup()
      end
    },

    {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',
      config = function()
        require('nvim-treesitter.install').update({ with_sync = true })
      end
    },

    {
      'nvim-treesitter/nvim-treesitter-textobjects',
      dependencies = { 
        'nvim-treesitter/nvim-treesitter'
      }
    },

    {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      opts = {}
    },

    {
      'neovim/nvim-lspconfig'
    },

    {
      'hrsh7th/nvim-cmp',
      -- load cmp on InsertEnter
      event = "InsertEnter",
      dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer'
      },
    },

    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.4',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    },

    {
      'mfussenegger/nvim-lint'
    },

    {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup({
          toggler = {
            line = '<leader>/',
          },
          opleader = {
            line = '<leader>/',
          },
          mappings = {
            basic = true,
            extra = false
          }
        })
      end
    },

    {
      "gbprod/yanky.nvim"
    },
  }
})
