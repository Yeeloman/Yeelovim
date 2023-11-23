-- main entry for conf
require("config")

-- to set the colorscheme
-- new themes to be added in /lua/plugins/themes.lua
vim.cmd("colorscheme wildcharm")

-- change line nnumber colors
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#FF00BF" })
-- vim.api.nvim_set_hl(0, "LineNr", { fg = "red" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#00F9FF" })
