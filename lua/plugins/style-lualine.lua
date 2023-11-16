-- check https://github.com/nvim-lualine/lualine.nvim
-- for more informations
return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config =  function()
    require('lualine').setup()
  end,
}
