local utils = require('utils')
local map = utils.map

-- map('n', 'p', '<Plug>(miniyank-autoput)')
-- map('n', 'P', '<Plug>(miniyank-autoPut)')

vim.cmd[[map p <Plug>(miniyank-autoput)]]
vim.cmd[[map P <Plug>(miniyank-autoPut)]]
vim.cmd[[map <leader>p <Plug>(miniyank-startput)]]
vim.cmd[[map <leader>P <Plug>(miniyank-startPut)]]
vim.cmd[[map <leader>n <Plug>(miniyank-cycle)]]
vim.cmd[[map <leader>N <Plug>(miniyank-cycleback)]]

-- map('n', '<leader>p', '<Plug>(miniyank-startput)')
-- map('n', '<leader>P', '<Plug>(miniyank-startPut)')

-- Cycle to next
-- map('n', '<leader>n', '<Plug>(miniyank-cycle)')

-- Cycle to prev
-- map('n', '<leader>N', '<Plug>(miniyank-cycleback)')

-- Register type?! dunno
-- map('n', '<Leader>c', '<Plug>(miniyank-tochar)')
-- map('n', '<Leader>l', '<Plug>(miniyank-toline)')
-- map('n', '<Leader>b', '<Plug>(miniyank-toblock)')
