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

  -- Colorschemes
  'shatur/neovim-ayu',
  'cocopon/iceberg.vim',
  'rebelot/kanagawa.nvim',
  'folke/tokyonight.nvim',
  'p00f/alabaster.nvim',

  -- LSP and language related
  'ray-x/lsp_signature.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.2',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate"
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

  -- Language related
  'Tetralux/odin.vim',

  -- Useful Utils
  -- 'theprimeagen/harpoon',
  'mbbill/undotree',
  'godlygeek/tabular',

  -- MINI plugins
  'echasnovski/mini.pairs',
  'echasnovski/mini.cursorword',
  'echasnovski/mini.starter',
  --'echasnovski/mini.jump2d',
  --'echasnovski/mini.animate',

  -- FOLKE plugins
  'folke/lsp-colors.nvim',
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
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    }
  },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    },
    {
    'stevearc/dressing.nvim',
    opts = {},
    }
}

local opts = {}


-- PLUGINS SETUPS?
require("lazy").setup(plugins, opts)
