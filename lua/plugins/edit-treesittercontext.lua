-- check https://github.com/nvim-treesitter/nvim-treesitter-context
-- for more informations
return {
	"nvim-treesitter/nvim-treesitter-context",
	lazy = false,
	config = function()
		require("treesitter-context").setup({
			enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
			max_lines = 2, -- How many lines the window should span. Values <= 0 mean no limit.
			min_window_height = 1, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
			line_numbers = false,
			multiline_threshold = 20, -- Maximum number of lines to show for a single context
			trim_scope = "outer", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
			mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
			-- Separator between context and content. Should be a single character string, like '-'.
			-- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
			separator = nil,
			zindex = 20, -- The Z-index of the context window
			on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
		})
		vim.cmd([[hi TreesitterContextBottom gui=italic,bold,underline guisp=Grey]])
	end,
}