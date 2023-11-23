-- check https://github.com/andersevenrud/nvim_context_vt
-- for more informations
return {
  'andersevenrud/nvim_context_vt',
  event = "VeryLazy",
  config = function ()
    require('nvim_context_vt').setup()
  end
}
