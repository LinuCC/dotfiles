local lsp_status = require('lsp-status')

local buf_keymap = vim.api.nvim_buf_set_keymap
local cmd = vim.cmd

local keymap_opts = {noremap = true, silent = true}
local function on_attach(client)
  lsp_status.on_attach(client)

  buf_keymap(0, 'n', 'gh', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', keymap_opts)
  buf_keymap(0, 'n', 'gy', '<cmd>lua require("lspsaga.provider").lsp_finder()<CR>', keymap_opts)
  buf_keymap(0, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', keymap_opts)
  buf_keymap(0, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', keymap_opts)
  buf_keymap(0, 'n', 'K', '<cmd>lua require("lspsaga.hover").render_hover_doc()<CR>', keymap_opts)
  buf_keymap(0, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', keymap_opts)
  buf_keymap(0, 'n', 'gS', '<cmd>lua require("lspsaga.signaturehelp").signature_help()<CR>',
             keymap_opts)
  buf_keymap(0, 'n', 'gTD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', keymap_opts)
  buf_keymap(0, 'n', '<leader>rn', '<cmd>lua require("lspsaga.rename").rename()<CR>', keymap_opts)
  buf_keymap(0, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', keymap_opts)
  buf_keymap(0, 'n', 'gA', '<cmd>lua require("lspsaga.codeaction").code_action()<CR>', keymap_opts)
  buf_keymap(0, 'v', 'gA', ':<C-U>lua require("lspsaga.codeaction").range_code_action()<CR>',
             keymap_opts)
  buf_keymap(0, 'n', ']e', '<cmd>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_next()<cr>',
             keymap_opts)
  buf_keymap(0, 'n', '[e', '<cmd>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_prev()<cr>',
             keymap_opts)

  if client.resolved_capabilities.document_formatting then
    buf_keymap(0, 'n', '<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<cr>', keymap_opts)
  end

  if client.resolved_capabilities.document_highlight == true then
    cmd('augroup lsp_aucmds')
    cmd('au CursorHold <buffer> lua vim.lsp.buf.document_highlight()')
    cmd('au CursorHold <buffer> lua require("lspsaga.diagnostic").show_cursor_diagnostics()')
    cmd('au CursorMoved <buffer> lua vim.lsp.buf.clear_references()')
    cmd('augroup END')
  end
end

return {on_attach = on_attach}
