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
  'wbthomason/packer.nvim',

  'ellisonleao/gruvbox.nvim',
  'arturgoms/moonbow.nvim',
  'shatur/neovim-ayu',
  'folke/lsp-colors.nvim',
  { 'lifepillar/vim-gruvbox8',      branch = "neovim" },
  { 'luisiacc/gruvbox-baby' },

  'rebelot/kanagawa.nvim',
  'folke/tokyonight.nvim',

  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',

  'theprimeagen/harpoon',
  'mbbill/undotree',
  'ray-x/lsp_signature.nvim',
  { 'echasnovski/mini.pairs',      version = '*' },
  { 'echasnovski/mini.cursorword', version = '*' },
  { 'echasnovski/mini.starter',    version = '*' },
  { 'echasnovski/mini.jump2d',     version = '*' },

  {
    'folke/which-key.nvim',
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      auto_close = true,
    },
  },

  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  },

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- lsp support
      { 'neovim/nvim-lspconfig' },
      {
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' },

      --Autocomplete
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  },
}

local opts = {}

require("lazy").setup(plugins, opts)
