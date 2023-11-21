-- check https://github.com/TobinPalmer/Tip.nvim
-- for more informations
return {
  "TobinPalmer/Tip.nvim",
  event = "VimEnter",
  init = function()
    require("tip").setup({
      title = "Tip!",
      url = "https://vtip.43z.one",
    })
  end,
}
