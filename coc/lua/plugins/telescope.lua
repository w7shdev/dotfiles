local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

local builtin = require('telescope.builtin')
local opts = { noremap = true}
vim.keymap.set('n', '<leader><leader>f', builtin.find_files, opts)
vim.keymap.set('n', '<leader><leader>g', builtin.live_grep, opts)
vim.keymap.set('n', '<leader><leader>b', builtin.buffers, opts)
vim.keymap.set('n', '<leader><leader>h', builtin.help_tags, opts)
