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
				theme = "ivy",
				previewer = true,
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				previewer = true,
			},
			buffers = {
				theme = "ivy",
				previewer = true,
			},
      oldfiles = {
        theme = "ivy",
        previewer = true,
      },
      git_status = {
        theme = "ivy",
        previewer = true,
      },
      spell_suggest = {
        theme = "cursor",
        previewer = true,
      },
      colorscheme = {
        theme = 'cursor',
        previewer = true,
      },
		},
	})
  require("telescope").load_extension "file_browser"
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
  config = config,
  vim.api.nvim_set_keymap('n', '<Leader>tf', ':Telescope find_files<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>tb', ':Telescope buffers<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>tg', ':Telescope live_grep<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>to', ':Telescope oldfiles<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>tc', ':Telescope colorscheme<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>tr', ':Telescope registers<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>tvo', ':Telescope vim_options<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>tts', ':Telescope treesitter<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>tn', ':Telescope notify<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>ts', ':Telescope spell_suggest<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>tzf', ':Telescope current_buffer_fuzzy_find<CR>', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<Leader>tfb', ':Telescope file_browser<CR>', { noremap = true, silent = true }),
}

