-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: lazy.nvim
-- URL: https://github.com/folke/lazy.nvim

-- For information about installed plugins see the README:
-- neovim-lua/README.md
-- original: https://github.com/brainfucksec/neovim-lua#readme
-- this config is not as the same as the top repo...


-- Bootstrap lazy.nvim
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

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
  return
end

-- Start setup
lazy.setup({
  spec = {
    -- Colorscheme:
    -- The colorscheme should be available when starting Neovim.
    {
      'navarasu/onedark.nvim',
      lazy = true, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
    },

    -- other colorschemes:
    { 'tanvirtin/monokai.nvim', lazy = true },
    { 'https://github.com/rose-pine/neovim', name = 'rose-pine', lazy = false },

    -- Icons
    { 'nvim-tree/nvim-web-devicons', lazy = true },

    -- Dashboard (start screen)
    {
      'goolord/alpha-nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
    },

    -- Git labels
    {
      'tpope/vim-fugitive'
    },
    -- File explorer
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
    },


    -- Indent line
    { 'lukas-reineke/indent-blankline.nvim' },


    -- coc
    {
      "neoclide/coc.nvim",
      branch = "release",
    },
    {
      'vim-airline/vim-airline',
      dependencies = {
        'vim-airline/vim-airline-themes'
      }
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
      'tpope/vim-surround'
    },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    -- nvim-comment
    {'numToStr/Comment.nvim', lazy= false},
    {'lunarvim/horizon.nvim', lazy=true},
    {'nvim-lualine/lualine.nvim'},
    {'rmehri01/onenord.nvim'},

    -- vim exchange
    {'tommcdo/vim-exchange'},
    -- themes
    {"ellisonleao/gruvbox.nvim", priority = 1000 },
    {"sainnhe/gruvbox-material"},
    {"alexandersix/vim-blade"},
    {"mattn/emmet-vim"},
    {"xiyaowong/transparent.nvim",
      config = function()
          require("transparent").setup()
      end,
    },


    -- end
  },
})
