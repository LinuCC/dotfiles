local map = require('utils').map
-- vim.g.copilot_filetypes = {
--   'tsx': true,
-- }

local opts = {silent = true, expr = true}

map('i', "<C-J>", "copilot#Accept(\"\\<CR>\")", opts)
vim.cmd('let g:copilot_no_tab_map = v:true')
