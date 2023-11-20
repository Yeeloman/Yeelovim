-- check https://github.com/m4xshen/hardtime.nvim
-- for more informations
return
{
   "m4xshen/hardtime.nvim",
    lazy = false,
   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      max_count = 1000000000000000000000000,
      max_time = 1000,
      disable_mouse = false,
      hint = true,
      notification = true,
      allow_different_key = false,
      enabled = false,
      disabled_keys = {
        ["<Up>"] = { "n" },
        ["<Down>"] = { "n" },
        ["<Left>"] = { "n" },
        ["<Right>"] = { "n" },
      }
    }
}
