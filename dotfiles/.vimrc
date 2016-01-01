set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" ControlP Plugin
Plugin 'kien/ctrlp.vim'

" BufExplorer Plugin
" Plugin ''

" A filetree
Plugin 'scrooloose/nerdtree'

Plugin 'Townk/vim-autoclose'

Plugin 'jeffkreeftmeijer/vim-numbertoggle'

Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-rails'

Plugin 'bling/vim-airline'

Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-fugitive'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'roryokane/detectindent'

Plugin 'blueyed/smarty.vim'

Plugin 'xolox/vim-misc'

Plugin 'xolox/vim-easytags'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'vim-scripts/taglist.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-surround'

Bundle 'farseer90718/vim-taskwarrior'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set encoding=utf-8

set listchars=tab:▸\ ,trail:·,nbsp:·
set list

let mapleader=","

"Show linenumbers
set nu 
"Newline after 80 characters
set tw=80

"Tabs to Spaces
set expandtab
"2 Spaces Tab width
set ts=2 sts=2 sw=2 expandtab
"set tabstop=4

"syntax enable
"set background=dark
syntax on

set modeline
set nocompatible
set autoindent

set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme Tomorrow-Night

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"Configurations for Plugin Airline
let g:airline_theme="dark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1

set cursorline


"Default with vim-airline is to only show if window is split at least 1 times.
"Display always
set laststatus=2

"NERDTree

nmap <leader>nt :NERDTreeToggle <CR>

"indent guides

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=4

"Train moving around with hjkl, not arrows
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

"Insert a newline without going into insert-mode
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

"Better colors for vim-fugitive with the theme
hi! DiffAdd      ctermbg=22
hi! DiffChange   ctermbg=17
hi! DiffDelete   ctermbg=52
hi! DiffText     ctermbg=58
