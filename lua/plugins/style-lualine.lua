-- check https://github.com/nvim-lualine/lualine.nvim/tree/master
-- for more informations
return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { { require("NeoComposer.ui").status_recording }, "location" },
				lualine_c = { "diagnostics" },
				lualine_x = { "searchcount", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "branch" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
