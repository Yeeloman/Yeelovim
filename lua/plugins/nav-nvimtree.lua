-- plugin for nvim-tree
return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = false,
			},
		})
    --keymaps
    vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeFindFileToggle<CR>', { noremap = true, silent = true })
	end,
}
