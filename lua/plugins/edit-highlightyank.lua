-- check https://github.com/machakann/vim-highlightedyank
-- for more informations
return {
	"machakann/vim-highlightedyank",
	lazy = false,
  config = function()
    vim.g.highlightedyank_highlight_duration = 100
  end
}
