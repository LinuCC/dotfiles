local custom_on_attach = require('lsp_utils').on_attach

require("flutter-tools").setup{
  widget_guides = {
    enabled = true,
  },
  lsp = {
    flutter_lookup_cmd = "asdf where flutter",
    on_attach = custom_on_attach,
  },
}
