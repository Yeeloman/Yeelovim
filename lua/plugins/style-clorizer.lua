-- check blue
-- for more informations
return {
	"chrisbra/Colorizer",
	lazy = false,
  config = function ()
    vim.keymap.set('n', '<leader>ct', ':ColorToggle<CR>', {})
  end
}
