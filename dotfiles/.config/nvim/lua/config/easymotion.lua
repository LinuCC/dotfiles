local map = require('utils').map
local g = vim.g

local nonoremap = {noremap = false}

map('n', 'w', '<Plug>(easymotion-lineforward)', nonoremap)
map('n', 'b', '<Plug>(easymotion-linebackward)', nonoremap)
map('n', '<Leader>w', '<Plug>(easymotion-bd-w)', nonoremap)
-- map('n', "'", '<Plug>(easymotion-prefix)', nonoremap)
