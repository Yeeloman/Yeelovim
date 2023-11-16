-- telescope configs
local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = false,
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				previewer = false,
			},
			buffers = {
				theme = "dropdown",
				previewer = false,
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
  vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>fo', ':Telescope oldfiles<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>ft', ':Telescope colorscheme<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>fr', ':Telescope registers<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>fvo', ':Telescope vim_options<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>fts', ':Telescope treesitter<CR>', { noremap = true, silent = true }),
}

