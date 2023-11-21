-- check https://github.com/ecthelionvi/NeoComposer.nvim
-- for more informations
local config = {
	notify = true,
	delay_timer = 150,
	queue_most_recent = false,
	window = {
		border = "rounded",
		winhl = {
			Normal = "ComposerNormal",
		},
	},
	colors = {
		bg = "#16161e",
		fg = "#ff9e64",
		red = "#ec5f67",
		blue = "#5fb3b3",
		green = "#99c794",
	},
	keymaps = {
		play_macro = "@",
		yank_macro = "yq",
		stop_macro = "cq",
		toggle_record = "q",
		cycle_next = "<c-n>",
		cycle_prev = "<c-p>",
		toggle_macro_menu = "<m-q>",
	},
}

return {
	"ecthelionvi/NeoComposer.nvim",
	dependencies = { "kkharji/sqlite.lua" },
	opts = {},
	config = function()
		require("NeoComposer").setup(config)
	end,
}
