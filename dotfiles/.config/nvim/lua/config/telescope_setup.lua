local map = require('utils').map

local silent = {silent = true}
-- Navigate buffers and repos
map('n', '<c-a>', [[<cmd>Telescope buffers<cr>]], silent)
map('n', '<c-s>', [[<cmd>Telescope git_files<cr>]], silent)
map('n', '<c-p>', [[<cmd>Telescope find_files<cr>]], silent)
-- map('n', '<c-g>', [[<cmd>Telescope live_grep<cr>]], silent)
map('n', '<c-g>', [[<cmd>lua require'telescope.builtin'.grep_string{ search = vim.fn.input('Search for: ') }<cr>]], silent)
map('n', '<c-f>', [[<cmd>Telescope file_browser<cr>]], silent)
-- map('n', '<c-t>', [[<cmd>Telescope treesitter<cr>]], silent)
map('n', '<c-t>', [[<cmd>Telescope lsp_document_symbols<cr>]], silent)
-- map('n', '<c-t>', [[<cmd>lua require('telescope.builtin').treesitter{}<cr>]], silent)
