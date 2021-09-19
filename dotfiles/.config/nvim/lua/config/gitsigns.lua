require('gitsigns').setup {
  debug_mode = true, -- Add this to enable debug messages
  signs = {
    add = {hl = 'GreenSign', text = '│', numhl = 'GitSignsAddNr'},
    change = {hl = 'BlueSign', text = '│', numhl = 'GitSignsChangeNr'},
    delete = {hl = 'RedSign', text = '│', numhl = 'GitSignsDeleteNr'},
    topdelete = {hl = 'RedSign', text = '│', numhl = 'GitSignsDeleteNr'},
    changedelete = {hl = 'PurpleSign', text = '│', numhl = 'GitSignsChangeNr'}
  }
}

