local map = require('utils').map


-- let test#javascript#jest#file_pattern ="\v(__tests__/.*|(spec|test))\.(js|jsx|coffee|ts|tsx)$"
vim.cmd("let test#strategy = 'neovim'")
vim.cmd("let test#javascript#jest#file_pattern ='.*\\.ts$'")
vim.cmd("let test#javascript#runner = 'jest'")
vim.cmd("let test#javascript#jest#executable = 'node_modules/.bin/vue-cli-service test:unit --maxWorkers=1'")

vim.cmd('let test#javascript#jest#options = "--color=always"')
vim.cmd("let test#go#gotest#executable = 'grc --colour=on -c conf.gotest go test'")

map('n', '<leader>zn', '<cmd>UltestNearest<CR>')
map('n', '<leader>zf', '<cmd>Ultest<CR>')
map('n', '<leader>zs', '<cmd>UltestSummary<CR>')
map('n', '<leader>zo', '<cmd>UltestOutput<CR>')
map('n', '<leader>tn', '<cmd>TestNearest<CR>')
map('n', '<leader>tf', '<cmd>TestFile<CR>')
