local map = require('utils').map
local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup {
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },
  formatting = {
    format = lspkind.cmp_format(),
  },
  -- enabled = true,
  -- autocomplete = true,
  -- debug = false,
  -- min_length = 1,
  -- preselect = 'always',
  -- documentation = true,
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm(),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  }),
  -- source = {
  --   path = true, 
  --   buffer = true, 
  --   nvim_lsp = true, 
  --   nvim_lua = true, 
  --   vsnip = true,
  --   treesitter = true,
  -- }
}

-- Dont interact with navigator windows
vim.cmd("autocmd FileType guihua lua require('cmp').setup.buffer { enabled = false }")
vim.cmd("autocmd FileType guihua_rust lua require('cmp').setup.buffer { enabled = false }")

-- local opts = {noremap = true, silent = true, expr = true}
-- map('i', '<c-c>', [[cmp#complete()]], opts)
-- map('i', '<cr>', [[cmp#confirm('<cr>')]], opts)
-- map('i', '<c-e>', [[cmp#close('<c-e>')]], opts)
