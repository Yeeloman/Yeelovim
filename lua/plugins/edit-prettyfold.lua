-- check https://github.com/anuvyklack/pretty-fold.nvim
-- for more informations
return { 
  'anuvyklack/pretty-fold.nvim',
  event = "VeryLazy",
  config = function()
   require('pretty-fold').setup({
     keep_indentation = false,
     fill_char = '━',
     sections = {
       left = {
         '━ ', function() return string.rep('*', vim.v.foldlevel) end, ' ━┫', 'content', '┣'
       },
       right = {
         '┫ ', 'number_of_folded_lines', ': ', 'percentage', ' ┣━━',
       }
     }
  })
  end,
}
