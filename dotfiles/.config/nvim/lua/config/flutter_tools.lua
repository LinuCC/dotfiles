local custom_on_attach = require('lsp_utils').on_attach

require("flutter-tools").setup{
  widget_guides = {
    enabled = true,
  },
  lsp = {
    on_attach = custom_on_attach,
    settings = {
      dart = {
        enableSdkFormatter = true,
        lineLength = 120,
      },
    },
  },
}
