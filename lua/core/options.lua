-----------------------------------------------------------
-- General Neovim settings
-----------------------------------------------------------
-- Refs:  https://neovim.io/doc/user/vim_diff.html
-----------------------------------------------------------
local g = vim.g       -- Global variables
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)


-----------------------------------------------------------
-- General
-----------------------------------------------------------
g.mapleader = ','                               -- Leader
opt.mouse = 'a'                                 -- Enable mouse support
opt.clipboard = 'unnamedplus'                   -- Copy/paste to system clipboard
opt.swapfile = false                            -- Don't use swapfile
opt.completeopt = 'menuone,noinsert,noselect'   -- Autocomplete options

-----------------------------------------------------------
-- Neovim Core
-----------------------------------------------------------
opt.backup = false            -- Do not write backups
opt.swapfile = false          -- Do not write .swp
opt.lazyredraw = true         -- Faster scrolling
opt.hidden = true             -- Enable background buffers
opt.secure = true             -- secure mode on

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- Show line numbers
opt.colorcolumn = '100'       -- Line lenght marker 
opt.splitright = true         -- Vertical split to the right
opt.splitbelow = true         -- Horizontal split to the bottom
opt.ignorecase = true         -- Ignore case letters when search
opt.smartcase = true          -- Ignore lowercase for the whole pattern
opt.termguicolors = true      -- Enable 24-bit RGB colors
opt.laststatus = 3            -- Set global statusline
opt.list = true               -- Show tab trail nbsp

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true          -- Use spaces instead of tabs
opt.shiftwidth = 2            -- Shift 2 spaces when tab
opt.tabstop = 2               -- 1 tab == 2 spaces
opt.smartindent = true        -- Autoindent new lines
opt.wrap = false              -- No wrap

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- Disable nvim intro
opt.shortmess:append "sI"

-- Disable builtin plugins
local disabled_built_ins = {
   "gzip",
   "netrw",
   "netrwPlugin",
   "tarPlugin",
   "zipPlugin",
   "tutor",
   -- "rplugin",
   "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = true
end

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
g.node_host_prog = "/Users/mike/.asdf/shims/node" -- use package manager
