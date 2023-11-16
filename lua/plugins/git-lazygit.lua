-- check https://github.com/kdheepak/lazygit.nvim 
-- for more informations
return {
  "kdheepak/lazygit.nvim",
  event = "VeryLazy",
  vim.keymap.set('n', '<leader>gg', ":LazyGit<CR>", { noremap = true, silent = true }),
}
