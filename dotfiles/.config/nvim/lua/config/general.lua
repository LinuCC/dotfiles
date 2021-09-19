-- ++ Plugins to test out ++
--
-- * vim-vsnip
-- * firenvim
-- * vim-wordmotion / vim-sneak instead of vim-easymotion
-- * targets.nvim
-- * telescope.nvim
-- * undotree
-- * lspsaga.nvim
-- * nvim-dap

local g = vim.g
local cmd = vim.cmd
local o, wo, bo = vim.o, vim.wo, vim.bo
local utils = require('utils')
local opt = utils.opt
local autocmd = utils.autocmd 
local map = utils.map

--
-- General stuff
--

init = function() 
	-- Leader/local leader
	g.mapleader = [[ ]]
	g.maplocalleader = [[,]]

	-- Disable some built-in plugins we don't want
	local disabled_built_ins = {
		'gzip', 'man', 'matchit', 'matchparen', 'shada_plugin', 'tarPlugin', 'tar', 'zipPlugin', 'zip',
		'netrwPlugin'
  }
  for i = 1, 10 do g['loaded_' .. disabled_built_ins[i]] = 1 end

  local buffer = {o, bo}
  local window = {o, wo}
  opt('textwidth', 100, buffer)
  opt('scrolloff', 7)
  opt('wildignore', '*.o,*~,*.pyc')
  opt('wildmode', 'longest,full')
  opt('whichwrap', vim.o.whichwrap .. '<,>,h,l')
  opt('inccommand', 'nosplit')
  opt('lazyredraw', true)
	opt('showmatch', true)
	opt('ignorecase', true)
	opt('smartcase', true)
	opt('tabstop', 2, buffer)
	opt('softtabstop', 0, buffer)
	opt('expandtab', true, buffer)
	opt('shiftwidth', 2, buffer)
	opt('number', true, window)
	opt('relativenumber', true, window)
	opt('smartindent', true, buffer)
	opt('laststatus', 2)
	opt('showmode', false)
	opt('shada', [['20,<50,s10,h,/100]])
	opt('hidden', true)
	opt('shortmess', o.shortmess .. 'c')
	opt('completeopt', 'menuone,noselect')
	opt('joinspaces', false)
	opt('guicursor', [[n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50]])
	opt('updatetime', 500)
	opt('conceallevel', 2, window)
	opt('concealcursor', 'nc', window)
	opt('previewheight', 5)
	opt('undofile', true, buffer)
	opt('synmaxcol', 500, buffer)
	opt('display', 'msgsep')
	opt('cursorline', true, window)
	opt('modeline', false, buffer)
	opt('mouse', 'nivh')
	opt('signcolumn', 'yes:1', window)
	opt('title', true) -- Update window title dynamically

	-- Keybindings
	local silent = {silent = true}
local noremap = {noremap = true}

	-- Window movement
	map('n', '<c-h>', '<c-w>h', noremap)
	map('n', '<c-j>', '<c-w>j')
	map('n', '<c-k>', '<c-w>k')
	map('n', '<c-l>', '<c-w>l')

	map('n', '<leader>h', '<c-w>h')
	map('n', '<leader>j', '<c-w>j')
	map('n', '<leader>k', '<c-w>k')
	map('n', '<leader>l', '<c-w>l')

	map('n', '<leader>1', '<c-w>1w')
	map('n', '<leader>2', '<c-w>2w')
	map('n', '<leader>3', '<c-w>3w')
	map('n', '<leader>4', '<c-w>4w')
	map('n', '<leader>5', '<c-w>5w')
	map('n', '<leader>6', '<c-w>6w')
	map('n', '<leader>7', '<c-w>7w')
	map('n', '<leader>8', '<c-w>8w')
	map('n', '<leader>9', '<c-w>9w')

	-- Run a build
	map('n', '<localleader><localleader>', '<cmd>Make<cr>', silent)

	-- Esc in the terminal
	map('t', 'jj', [[<C-\><C-n>]])

  init_colorscheme()

	-- vim.o.ignorecase = true
	-- vim.o.smartcase = true
	-- vim.o.incsearch = true
  --
	-- vim.o.history = 5000
  --
	-- vim.o.tabstop = 2
	-- vim.o.shiftwidth = vim.o.tabstop
  --
	-- vim.g.mapleader = " "
	-- vim.g.textwidth = 100
	-- vim.g.wrap = true
	-- opt()vim.g.relativenumber = true
	-- vim.g.smartindent = true
  --
	-- vim.g.lazyredraw = true
end

init_colorscheme = function()
  opt('termguicolors', true)
  opt('background', 'dark')

	g.enable_bold_font = 1
	g.nord_italic = 1
	g.nord_underline = 1
	g.nord_italic_comments = 1
	g.nord_cursor_line_number_background = 1

	cmd [[colorscheme nord]]

  -- Transparent background
  cmd [[highlight Normal guibg=none ctermbg=none]]
  cmd [[highlight NonText guibg=none ctermbg=none]]

  cmd [[highlight IndentGuidesOdd  guibg=none ctermbg=none]]
  cmd [[highlight IndentGuidesEven guibg=none ctermbg=none]]

-- hi TSConstructor guifg=#8FBCBB gui=bold
-- hi TSKeyword guifg=#5e81ac
-- hi TSMethod guifg=#8FBCBB gui=bold
  cmd [[hi TSConditional guifg=#88c0d0]]
  cmd [[hi TSConstant guifg=#d8dee9 gui=bold]]
  cmd [[hi TSException guifg=#88c0d0 gui=italic]]
  cmd [[hi TSKeyword guifg=#b48ead]]
  cmd [[hi TSProperty guifg=#81a1c1 gui=italic]]
  cmd [[hi TSRepeat guifg=#88c0d0]]
  cmd [[hi TSTypeBuiltin guifg=#81a1c1 gui=bold]]
  cmd [[hi TSVariableBuiltin guifg=#d08770]]

end

--
--completion.nvim && snippets stuff
--

vim.g.completion_enable_snippet = "vim-vsnip"
-- vim.g.vsnip_filetypes = {
--   javascriptreact = {"javascript"},
--   typescriptreact = {"typescript"}
-- }

return {
  init = init,
};
