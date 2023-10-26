local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

telescope.setup{
  pickers = {
    colorscheme = {
      enable_preview = true,
      theme = "dropdown"
    }
  }
}
local builtin = require('telescope.builtin')
local opts = { noremap = true}
vim.keymap.set('n', '<leader><leader>f', builtin.find_files, opts)
vim.keymap.set('n', '<leader><leader>g', builtin.live_grep, opts)
vim.keymap.set('n', '<leader><leader>b', builtin.buffers, opts)
vim.keymap.set('n', '<leader><leader>h', builtin.help_tags, opts)
vim.keymap.set('n', '<leader><leader>t', builtin.colorscheme, opts)
