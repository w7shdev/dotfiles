--[[

Neovim init file
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-- Import Lua modules
require('core/lazy')
require('core/keymaps')
require('lsp/coc')
require('plugins/telescope')
require('core/autocmds')
require('plugins/indent-blankline')
require('core/theme')
require('plugins/lualine')
require('core/options')
require('plugins/alpha-nvim')
require('plugins/nvim-treesitter')
require('plugins/nvim-comment')
