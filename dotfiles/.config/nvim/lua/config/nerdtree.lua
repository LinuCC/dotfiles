local map = require('utils').map

local silent = {silent = true}
-- Navigate buffers and repos

-- Replaced by telescope file_browser
-- map('n', '<leader>n', [[<cmd>NERDTreeToggle<cr>]], silent)
map('n', '<leader>m', [[<cmd>NERDTreeFind<cr>]], silent)
