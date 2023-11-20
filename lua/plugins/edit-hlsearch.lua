-- check https://github.com/nvimdev/hlsearch.nvim
-- for more informations
return {
  'nvimdev/hlsearch.nvim',
  event = 'BufRead',
  config = function ()
    require('hlsearch').setup()
  end
}
