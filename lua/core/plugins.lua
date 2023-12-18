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
  'AlessandroYorba/Despacio',
  {
   "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- LSP and language related
  -- Copilot
  "zbirenbaum/copilot.lua",
  --"zbirenbaum/copilot-cmp",
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
  ---
  --{
      --'VonHeikemen/lsp-zero.nvim',
      --branch = 'v2.x',
      --dependencies = {
          -- lsp support
          --{ 'neovim/nvim-lspconfig' },
          --{
              --'williamboman/mason.nvim',
              --build = function()
                  --pcall(vim.cmd, 'MasonUpdate')
              --end,
          --},
          --{ 'williamboman/mason-lspconfig.nvim' },

          --Autocomplete
          --{ 'hrsh7th/nvim-cmp' },
          --{ 'hrsh7th/cmp-nvim-lsp' },
          --{ 'L3MON4D3/LuaSnip' },
      --}
  --},

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

}

local opts = {}


-- PLUGINS SETUPS?
require("lazy").setup(plugins, opts)

require("solarized-osaka").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
}) 

require('copilot').setup({
  panel = {
    enabled = false,
    auto_refresh = false,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>"
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<A-w>",
      accept_word = false,
      accept_line = false,
      next = "<A-]>",
      prev = "<A-[>",
      dismiss = "<A-q>",
    },
  },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["*"] = true,
  },
  copilot_node_command = 'node', -- Node.js version must be > 18.x
  server_opts_overrides = {},
})

-- require("copilot_cmp").setup()
