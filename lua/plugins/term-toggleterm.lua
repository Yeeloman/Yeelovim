-- check https://github.com/akinsho/toggleterm.nvim
-- for more information
return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    event ='VeryLazy',
    config = function()
      require("toggleterm").setup({
        size = 50,
        open_mapping = [[<C-\>]],
        autochdir = true,
        direction = 'vertical',
        -- 'horizontal' | 'tab' | 'float',
      })
    end,
  }
}
