-- check https://github.com/booperlv/nvim-gomove
-- for more informations
return {
	"booperlv/nvim-gomove",
	event = "VeryLazy",
	config = function()
		require("gomove").setup({
			-- whether or not to map default key bindings, (true/false)
			map_defaults = false,
			-- whether or not to reindent lines moved vertically (true/false)
			reindent = true,
			-- whether or not to undojoin same direction moves (true/false)
			undojoin = true,
			-- whether to not to move past end column when moving blocks horizontally, (true/false)
			move_past_end_col = false,
		})
    local map = vim.keymap.set

    map( "n", "<A-H>", "<Plug>GoNSMLeft", {} )
    map( "n", "<A-J>", "<Plug>GoNSMDown", {} )
    map( "n", "<A-K>", "<Plug>GoNSMUp", {} )
    map( "n", "<A-L>", "<Plug>GoNSMRight", {} )

    map( "x", "<A-H>", "<Plug>GoVSMLeft", {} )
    map( "x", "<A-J>", "<Plug>GoVSMDown", {} )
    map( "x", "<A-K>", "<Plug>GoVSMUp", {} )
    map( "x", "<A-L>", "<Plug>GoVSMRight", {} )

    map( "n", "<C-A-H>", "<Plug>GoNSDLeft", {} )
    map( "n", "<C-A-J>", "<Plug>GoNSDDown", {} )
    map( "n", "<C-A-K>", "<Plug>GoNSDUp", {} )
    map( "n", "<C-A-L>", "<Plug>GoNSDRight", {} )

    map( "x", "<C-A-H>", "<Plug>GoVSDLeft", {} )
    map( "x", "<C-A-J>", "<Plug>GoVSDDown", {} )
    map( "x", "<C-A-K>", "<Plug>GoVSDUp", {} )
    map( "x", "<C-A-L>", "<Plug>GoVSDRight", {} )
	end,
}
