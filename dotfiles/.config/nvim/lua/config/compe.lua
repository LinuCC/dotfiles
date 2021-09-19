local map = require('utils').map

require('compe').setup {
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = 'always',
  documentation = true,
  source = {
    path = true, 
    buffer = true, 
    nvim_lsp = true, 
    nvim_lua = true, 
    vsnip = true,
    treesitter = true,
    -- tabnine = true,
  }
}

local opts = {noremap = true, silent = true, expr = true}
map('i', '<c-c>', [[compe#complete()]], opts)
map('i', '<cr>', [[compe#confirm('<cr>')]], opts)
map('i', '<c-e>', [[compe#close('<c-e>')]], opts)

-- require'compe'.register_source('tabnine', require('compe_tabnine'))
