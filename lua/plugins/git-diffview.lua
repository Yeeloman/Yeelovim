--
--
return {
  'sindrets/diffview.nvim',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  vim.keymap.set('n', '<leader>Go', ":DiffviewOpen<CR>", { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>Gc', ":DiffviewClose<CR>", { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>Gt', ":DiffviewToggleFiles<CR>", { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>Gh', ":DiffviewFileHistory<CR>", { noremap = true, silent = true }),
}
