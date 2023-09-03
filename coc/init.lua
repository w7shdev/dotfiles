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
require('core/colors')
require('core/options')
require('plugins/nvim-tree')
require('plugins/alpha-nvim')
require('core/airlinetheme')
require('plugins/nvim-treesitter')
require('plugins/nvim-comment')
