-- Bootstrap packer
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end
-- /Bootstrap packer

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- LUA vim config helper
  use 'svermeulen/vimpeccable'

  -- Marks
  use {'kshenoy/vim-signature', config = [[require('config.signature')]], disable = true}

  -- Movement
  use { 'phaazon/hop.nvim', as = 'hop', config = [[require('config.hop')]] } 


  use {'tpope/vim-dispatch', cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Completion
  use {'hrsh7th/nvim-compe', config = [[require('config.compe')]], event = 'InsertEnter *'}
  use {'hrsh7th/vim-vsnip', config = [[require('config.vsnip')]], event = 'InsertEnter *'}
  use {
    'tzachar/compe-tabnine', 
    config = [[require('config.compe-tabnine')]], 
    run='./install.sh', 
    requires = 'hrsh7th/nvim-compe', 
    -- after ='hrsh7th/nvim-compe'
  }
  use {"rafamadriz/friendly-snippets", requires = 'hrsh7th/vim-vsnip'}

  -- Highlights
  use { 'nvim-treesitter/nvim-treesitter', config = [[require('config.treesitter')]] }

  -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Test execution
  use {
    "rcarriga/vim-ultest",
    requires = {"janko/vim-test"},
    config = [[require('config.ultest')]],
    run = ":UpdateRemotePlugins"
  }

  -- Quickfix
  use {'Olical/vim-enmasse', cmd = 'EnMasse'}

  -----

  -- Indentation tracking
  use {
    'lukas-reineke/indent-blankline.nvim',
    setup = [[require('config.indentline')]]
  }
  -- Commenting
  use 'tomtom/tcomment_vim'

  -- Wrapping/delimiters
  use {'machakann/vim-sandwich', {'andymass/vim-matchup', setup = [[require('config.matchup')]]}}

  -- Text objects
  use 'wellle/targets.vim'

  -- Surrounding text
  use 'tpope/vim-surround'

  -- Multiselect
  use { 'mg979/vim-visual-multi', branch = 'master', config = [[require('config.visual-multi')]] }

  -- Yank history (like killring in emacs)
  use {'bfredl/nvim-miniyank', config = [[require('config.miniyank')]]}

  -- Search
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    setup = [[require('config.telescope_setup')]],
    config = [[require('config.telescope')]],
    cmd = 'Telescope',
    -- module = 'telescope',
  }

  use {'nvim-telescope/telescope-frecency.nvim', requires = 'tami5/sql.nvim'}

  -- Undo tree
  use {
    'mbbill/undotree',
    cmd = 'UndotreeToggle',
    config = [[vim.g.undotree_SetFocusWhenToggle = 1]]
  }

  -- Git gutter signs
    -- use {
    --   'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    --   config = function() require('gitsigns').setup() end
    -- }


  -- Git
  use {
    {'tpope/vim-fugitive'}, {
      'lewis6991/gitsigns.nvim',
      requires = {'nvim-lua/plenary.nvim'},
      config = [[require('config.gitsigns')]]
    }, {'TimUntersberger/neogit', opt = true}
  }

  -- Pretty symbols
  use 'kyazdani42/nvim-web-devicons'

  -- Completion and linting
  use {
    'onsails/lspkind-nvim', 'neovim/nvim-lspconfig', 'nvim-lua/lsp-status.nvim',
    'glepnir/lspsaga.nvim'
  }

  use { 
    'preservim/nerdtree',
    config = [[require('config.nerdtree')]]
  }

  -- Debugger
  -- use {'mfussenegger/nvim-dap', config = [[require('config.dap')]]}

  -- Path navigation
  use 'justinmk/vim-dirvish'

  -- Theme
  -- use 'arcticicestudio/nord-vim'
  use 'shaunsingh/nord.nvim'

  -- Editorconfig
  use("editorconfig/editorconfig-vim")

  -- Formatting files
  use {'mhartington/formatter.nvim', config = [[require('config.format')]]}

  -- statusline
  use {'famiu/feline.nvim', config = [[require('config.feline')]]}

  -- flutter
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim',
    config = [[require('config.flutter_tools')]]}
end)

