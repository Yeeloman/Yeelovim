-- check https://github.com/nvimdev/dashboard-nvim
-- for more information
return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			-- config
			theme = "doom",
			config = {
				header = {
					[[                                         ]],
					[[                                         ]],
					[[▄██   ▄      ▄████████    ▄████████  ▄█        ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   ]],
					[[███   ██▄   ███    ███   ███    ███ ███       ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ ]],
					[[███▄▄▄███   ███    █▀    ███    █▀  ███       ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
					[[▀▀▀▀▀▀███  ▄███▄▄▄      ▄███▄▄▄     ███       ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
					[[▄██   ███ ▀▀███▀▀▀     ▀▀███▀▀▀     ███       ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
					[[███   ███   ███    █▄    ███    █▄  ███       ███    ███ ███    ███ ███  ███   ███   ███ ]],
					[[███   ███   ███    ███   ███    ███ ███▌    ▄ ███    ███ ███    ███ ███  ███   ███   ███ ]],
					[[ ▀█████▀    ██████████   ██████████ █████▄▄██  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  ]],
					[[                                    ▀                                                    ]],
					[[━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━]],
					[[                                         ]],
					[[                                         ]],
				},
				center = {
					{
						icon = "󰮗 ",
						desc = " Find Files                             ",
						key = "f",
						-- keymap = '<leader> f f',
						key_format = " %s", -- remove default surrounding `[]`
						action = ":Telescope find_files",
						icon_hl = "Title",
						key_hl = "Number",
						desc_hl = "String",
					},
					{
						icon = " ",
						desc = " Recent Files",
						key = "r",
						key_format = " %s", -- remove default surrounding `[]`
						action = ":Telescope oldfiles",
						icon_hl = "Title",
						key_hl = "Number",
						desc_hl = "String",
					},
					{
						icon = " ",
						desc = " Browse Files",
						key = "b",
						key_format = " %s", -- remove default surrounding `[]`
						action = ":Telescope file_browser",
						icon_hl = "Title",
						key_hl = "Number",
						desc_hl = "String",
					},
					{
						icon = " ",
						desc = " Git Status",
						key = "g",
						key_format = " %s", -- remove default surrounding `[]`
						action = ":Telescope git_status",
						icon_hl = "Title",
						key_hl = "Number",
						desc_hl = "String",
					},
					{
						icon = "󱀸 ",
						desc = " Restore Session",
						key = "s",
						key_format = " %s", -- remove default surrounding `[]`
						action = ":SessionLoad",
						icon_hl = "Title",
						key_hl = "Number",
						desc_hl = "String",
					},
					{
						icon = " ",
						desc = " Quit",
						key = "q",
						-- keymap = '<leader> f d',
						key_format = " %s", -- remove default surrounding `[]`
						action = ":q",
						icon_hl = "Title",
						key_hl = "Number",
						desc_hl = "String",
					},
				},
				footer = {
					[[┓ ━━━━ ┏ ╻ ┓ ━━ ┏┓┏    ┓         ┓ ━━ ┏ ╻ ┓ ━━━━ ┏]],
					[[┣━━━━━━┫━╋━┣━━━━┫┗┫┏┓┏┓┃┏┓┏┳┓┏┓┏┓┣━━━━┫━╋━┣━━━━━━┫]],
					[[┛ ━━━━ ┗ ╹ ┛ ━━ ┗┗┛┗ ┗ ┗┗┛┛┗┗┗┻┛┗┛ ━━ ┗ ╹ ┛ ━━━━ ┗]],
					[[                                                  ]],
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
