-- add the styled indent
return {
  "shellRaining/hlchunk.nvim",
  lazy = false,
  config = function()
    require("hlchunk").setup({
    -- chunk = {
    --   chars = {
    --       horizontal_line = "─",
    --       vertical_line = "│",
    --       left_top = "┌",
    --       left_bottom = "└",
    --       right_arrow = "─",
    --   },
    --   style = "#00ffff",
    -- },
      line_num = {
        style = "#806d9c",
      },
    })
  end
}
