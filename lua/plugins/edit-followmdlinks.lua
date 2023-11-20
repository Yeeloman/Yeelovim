-- check https://github.com/jghauser/follow-md-links.nvim
-- for more informations
return {
  'jghauser/follow-md-links.nvim',
  event = "VeryLazy",
  config = function ()
    vim.keymap.set('n', '<bs>', ':edit #<cr>', { silent = true })
  end
}
