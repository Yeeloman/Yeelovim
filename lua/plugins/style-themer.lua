-- check https://github.com/themercorp/themer.lua
-- for more informations
return {
	"themercorp/themer.lua",
	event = "VeryLazy",
	config = function()
		require("themer").setup({})
	end,
}
