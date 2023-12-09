local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'ellisonleao/gruvbox.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  {'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},
  'github/copilot.vim',
  'matze/vim-move',

  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',

  'simrat39/rust-tools.nvim',
  {'akinsho/toggleterm.nvim', version = "*", config = true},

  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  }
}
local opts = {}

require("lazy").setup(plugins, opts)

