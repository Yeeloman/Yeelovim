-- main entry for conf
require("config")

require("themer").setup({
	colorscheme = "tokyodark",
	transparent = false,
	dim_inactive = true,
})

-- change line nnumber colors
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#FF00BF" })
-- vim.api.nvim_set_hl(0, "LineNr", { fg = "red" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#00F9FF" })
