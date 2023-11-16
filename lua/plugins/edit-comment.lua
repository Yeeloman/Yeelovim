--plugin to add commenting abilities
return {
	"numToStr/Comment.nvim",
	opts = {
		toggler = {
			line = "gcc",
			block = "gcb",
		},
	  opleader = {
			line = "gcc",
			block = "gcb",
		},
	},
	lazy = false,
}
