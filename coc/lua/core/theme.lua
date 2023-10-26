local status_ok, horizon = pcall(require, 'horizon')
if not status_ok then
  return
end


-- vim.cmd[[colorscheme horizon]]
vim.cmd[[colorscheme gruvbox-material]]

-- require('onenord').setup()