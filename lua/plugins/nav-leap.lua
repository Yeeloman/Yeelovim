-- checkhttps://github.com/ggandor/leap.nvim
-- for more informations
return {
  'ggandor/leap.nvim',
  lazy = false,
  config = function()
    require('leap').add_default_mappings()
  end
}
