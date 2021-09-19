local map = require('utils').map
local dap = require('dap')

-- Keybindings

local opts = {silent = true, noremap = true}

map('n', '<leader>db', ":lua require'dap'.toggle_breakpoint()<cr>", opts)
map('n', '<leader>dB', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
map('n', '<leader>dp', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", opts)
map('n', '<F5>', ":lua require'dap'.continue()<cr>", opts)
map('n', '<F10>', ":lua require'dap'.step_over()<cr>", opts)
map('n', '<F11>', ":lua require'dap'.step_into()<cr>", opts)
map('n', '<F12>', ":lua require'dap'.step_out()<cr>", opts)
map('n', '<leader>dr', ":lua require'dap'.repl.open()<cr>", opts)
map('n', '<leader>dl', ":lua require'dap'.run_last()<cr>", opts)

-- Go adapter

local port = 38697
dap.adapters.go = {
  type = 'executable';
  command = 'node';
  args = {os.getenv('HOME') .. '/code/github/vscode-go/dist/debugAdapter.js'};
}
dap.configurations.go = {
  {
    type = 'go';
    name = 'Debug';
    request = 'attach';
    mode = 'remote';
    port = port;
    host = "127.0.0.1";
    showLog = false;
    dlvToolPath = vim.fn.exepath('dlv');  -- Adjust to where delve is installed
    apiVersion = '1.5.0';
  },
}
