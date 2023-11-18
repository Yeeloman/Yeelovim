
-- check https://github.com/nvimdev/dashboard-nvim
-- for more information
return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    theme = 'doom',
    config = {
        header = { 
[[                                         ]],
[[                                         ]],
[[▄██   ▄      ▄████████    ▄████████  ▄█        ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   ]],
[[███   ██▄   ███    ███   ███    ███ ███       ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ ]],
[[███▄▄▄███   ███    █▀    ███    █▀  ███       ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
[[▀▀▀▀▀▀███  ▄███▄▄▄      ▄███▄▄▄     ███       ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
[[▄██   ███ ▀▀███▀▀▀     ▀▀███▀▀▀     ███       ███    ███ ███    ███ ███▌ ███   ███   ███ ]],
[[███   ███   ███    █▄    ███    █▄  ███       ███    ███ ███    ███ ███  ███   ███   ███ ]],
[[███   ███   ███    ███   ███    ███ ███▌    ▄ ███    ███ ███    ███ ███  ███   ███   ███ ]],
[[ ▀█████▀    ██████████   ██████████ █████▄▄██  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  ]],
[[                                    ▀                                                    ]],
[[━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━]],
[[                                         ]],
[[                                         ]],
        }, --your header
    center = {
      {
        icon = '󰮗 ',
        icon_hl = 'Title',
        desc = ' Find Files                             ',
        desc_hl = 'String',
        key = 'f',
        -- keymap = '<leader> f f',
        key_hl = 'Number',
        key_format = ' %s', -- remove default surrounding `[]`
        action = ':Telescope find_files'
      },
      {
        icon = ' ',
        desc = ' Recent Files',
        key = 'r',
        key_format = ' %s', -- remove default surrounding `[]`
        action = ':Telescope oldfiles'
      },
      {
        icon = ' ',
        desc = ' Browse Files',
        key = 'b',
        key_format = ' %s', -- remove default surrounding `[]`
        action = ':Telescope file_browser'
      },
      {
        icon = ' ',
        desc = ' Git Status',
        key = 'g',
        key_format = ' %s', -- remove default surrounding `[]`
        action = ':Telescope git_status'
      },
       {
        icon = '󱀸 ',
        desc = ' Restore Session',
        key = 's',
        key_format = ' %s', -- remove default surrounding `[]`
        action = ':SessionLoad'
      },         
      {
        icon = ' ',
        desc = ' Quit',
        key = 'q',
        -- keymap = '<leader> f d',
        key_format = ' %s', -- remove default surrounding `[]`
        action = ':q'
      },
    },
        footer = {
[[┓ ━━━━ ┏ ╻ ┓ ━━ ┏┓┏    ┓         ┓ ━━ ┏ ╻ ┓ ━━━━ ┏]],
[[┣━━━━━━┫━╋━┣━━━━┫┗┫┏┓┏┓┃┏┓┏┳┓┏┓┏┓┣━━━━┫━╋━┣━━━━━━┫]],
[[┛ ━━━━ ┗ ╹ ┛ ━━ ┗┗┛┗ ┗ ┗┗┛┛┗┗┗┻┛┗┛ ━━ ┗ ╹ ┛ ━━━━ ┗]],
[[                                                  ]],
        }  --your footer
  }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
