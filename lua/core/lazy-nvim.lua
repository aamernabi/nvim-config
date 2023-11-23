local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
  },

  -- color scheme
  'ellisonleao/gruvbox.nvim',
  'nvim-lualine/lualine.nvim',
  'nvim-tree/nvim-web-devicons',

  -- treesitter and undotree
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  'nvim-treesitter/playground',
  'mbbill/undotree',

  -- lsp support
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',

  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-cmdline',

  -- snippets
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',

  -- formatters and linters
  'stevearc/conform.nvim',
  'mfussenegger/nvim-lint',
  'WhoIsSethDaniel/mason-tool-installer.nvim',

  -- git plugins
  'lewis6991/gitsigns.nvim',
}

local opts = {}

local setup, lazy = pcall(require, 'lazy')

if not setup then
  return
end

lazy.setup(plugins, opts)
