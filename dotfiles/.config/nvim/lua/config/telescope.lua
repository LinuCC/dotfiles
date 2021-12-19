local map = require('utils').map
local telescope = require('telescope')

telescope.setup {
  defaults = {layout_strategy = 'flex', scroll_strategy = 'cycle'},
  extensions = {
    fzf = {
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
    }
  }
}
telescope.load_extension('fzf')
telescope.load_extension("flutter")
telescope.load_extension("neoclip")

-- telescope.load_extension('frecency')
