local map = require('utils').map
local g = vim.g

map('n', '<Leader>w', "<cmd>lua require'hop'.hint_words()<cr>")
