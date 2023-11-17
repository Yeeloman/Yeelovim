-- check https://github.com/nvimdev/dbsession.nvim
-- for more informations
return  {
  'glepnir/dbsession.nvim', 
  lazy = false,
  cmd = { 'SessionSave', 'SessionDelete', 'SessionLoad'},
  config = function()
    require('dbsession').setup({})
  end,
  -- for a quick session 
  vim.keymap.set('n', '<leader>ss', ":SessionSave default<CR>", { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>sl', ":SessionLoad default<CR>", { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>sd', ":SessionDelete default<CR>", { noremap = true, silent = true }),
  -- for a custom session
  vim.keymap.set('n', '<leader>sS', ":SessionSave<CR>", { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>sL', ":SessionLoad ", { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>sD', ":SessionDelete ", { noremap = true, silent = true }),

}
