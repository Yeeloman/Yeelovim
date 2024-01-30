-- main entry for conf
require("config")

-- vim.cmd("colorscheme cyberdream")
-- require("themer").setup({
-- 	colorscheme = "",
-- 	transparent = false,
-- 	dim_inactive = true,
-- })

-- change line nnumber colors
vim.api.nvim_set_hl(0, "linenrabove", { fg = "#ff00bf" })
-- vim.api.nvim_set_hl(0, "linenr", { fg = "red" })
vim.api.nvim_set_hl(0, "linenrbelow", { fg = "#00f9ff" })

-- guibg=#7108BF
vim.cmd([[
  hi visual guifg=#ffffff
]])
