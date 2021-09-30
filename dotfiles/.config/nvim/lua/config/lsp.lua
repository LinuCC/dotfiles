local lspconfig = require('lspconfig')
local lsp_status = require('lsp-status')
local saga = require('lspsaga')
local lspkind = require('lspkind')
local custom_on_attach = require('lsp_utils').on_attach
local lsp = vim.lsp
local buf_keymap = vim.api.nvim_buf_set_keymap
local cmd = vim.cmd

local kind_symbols = {
  Text = '',
  Method = 'Ƒ',
  Function = 'ƒ',
  Constructor = '',
  Variable = '',
  Class = '',
  Interface = 'ﰮ',
  Module = '',
  Property = '',
  Unit = '',
  Value = '',
  Enum = '了',
  Keyword = '',
  Snippet = '﬌',
  Color = '',
  File = '',
  Folder = '',
  EnumMember = '',
  Constant = '',
  Struct = ''
}

local sign_define = vim.fn.sign_define
sign_define('LspDiagnosticsSignError', {text = 'E', numhl = 'RedSign'})
sign_define('LspDiagnosticsSignWarning', {text = 'W', numhl = 'YellowSign'})
sign_define('LspDiagnosticsSignInformation', {text = 'I', numhl = 'WhiteSign'})
sign_define('LspDiagnosticsSignHint', {text = 'H', numhl = 'BlueSign'})
lsp_status.config {
  kind_labels = kind_symbols,
  select_symbol = function(cursor_pos, symbol)
    if symbol.valueRange then
      local value_range = {
        ['start'] = {character = 0, line = vim.fn.byte2line(symbol.valueRange[1])},
        ['end'] = {character = 0, line = vim.fn.byte2line(symbol.valueRange[2])}
      }

      return require('lsp-status/util').in_range(cursor_pos, value_range)
    end
  end,
  current_function = false
}

lsp_status.register_progress()
lspkind.init {symbol_map = kind_symbols}
lsp.handlers['textDocument/publishDiagnostics'] = lsp.with(lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = {
    spacing = 4,
    -- prefix = "｢ﮂ｣─➤"
    prefix = "",
  },
  signs = true,
  update_in_insert = false,
  underline = true
})
saga.init_lsp_saga {use_saga_diagnostic_sign = false}

local servers = {
  -- Flutter / dart lsp is set up by flutter_tools separately (see `flutters_tools.lua`)
  bashls = {},
  clangd = {
    cmd = {
      'clangd', -- '--background-index',
      '--clang-tidy', '--completion-style=bundled', '--header-insertion=iwyu',
      '--suggest-missing-includes', '--cross-file-rename'
    },
    handlers = lsp_status.extensions.clangd.setup(),
    init_options = {
      clangdFileStatus = true,
      usePlaceholders = true,
      completeUnimported = true,
      semanticHighlighting = true
    }
  },
  tsserver = {},
  rust_analyzer = {},
  vuels = {},
  gopls = {},
  cssls = {
    filetypes = {"css", "scss", "less", "sass"},
    root_dir = lspconfig.util.root_pattern("package.json", ".git")
  },
  html = {},
  jsonls = {cmd = {'json-languageserver', '--stdio'}},
  pyright = {settings = {python = {formatting = {provider = 'yapf'}}}},
  rust_analyzer = {},
  sumneko_lua = {
    cmd = {'lua-language-server'},
    settings = {
      Lua = {
        diagnostics = {globals = {'vim'}},
        runtime = {version = 'LuaJIT', path = vim.split(package.path, ';')},
        workspace = {
          library = {
            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
          }
        }
      }
    }
  },
  tsserver = {},
  vimls = {}
}

local snippet_capabilities = {
  textDocument = {completion = {completionItem = {snippetSupport = true}}}
}

for server, config in pairs(servers) do
  config.on_attach = custom_on_attach
  config.capabilities = vim.tbl_deep_extend('keep', config.capabilities or {},
                                            lsp_status.capabilities, snippet_capabilities)
  lspconfig[server].setup(config)
end
