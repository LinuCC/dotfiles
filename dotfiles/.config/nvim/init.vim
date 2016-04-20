set runtimepath^=/home/linucc/.config/nvim/bundles/repos/github.com/Shougo/dein.vim
call dein#begin(expand('/home/linucc/.config/nvim/bundles'))

call dein#add('tpope/vim-repeat', {
  \ 'lazy': 1,
  \ 'on_map': '.'})
call dein#add('tpope/vim-surround', {
  \ 'depends': ['vim-repeat'],
  \ 'on_map': 'cs'})
call dein#add('tomtom/tcomment_vim', {
  \ 'on_map': ['gc', 'g<', 'g>', '<C-_>', '<Leader>_'],
  \ })
call dein#add('easymotion/vim-easymotion', {
\    'on_map': [['n', '<Plug>']],
\    'hook_add': "
\        nmap w <Plug>(easymotion-lineforward)\n
\        nnoremap W     w\n
\        nmap b <Plug>(easymotion-linebackward)\n
\        nnoremap B     b\n
\        nmap [Alt]j <Plug>(easymotion-j)\n
\        nmap [Alt]k <Plug>(easymotion-k)\n
\        nmap ' <Plug>(easymotion-prefix)\n
\        let g:EasyMotion_startofline = 0\n
\        let g:EasyMotion_show_prompt = 0\n
\        let g:EasyMotion_verbose = 0\n
\    "
\ })
call dein#add('Raimondi/delimitMate')
call dein#add('bling/vim-airline', {
\  'hook_add': "
\    let g:airline_theme=\"base16_default\"\n
\    let g:airline_powerline_fonts = 1\n
\    let g:airline#extensions#tabline#enabled = 1\n
\    let g:airline#extensions#branch#enabled = 1\n
\  "
\ })
call dein#add('vim-airline/vim-airline-themes')
" call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('roryokane/detectindent')
call dein#add('tpope/vim-rails')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('xolox/vim-misc')
call dein#add('xolox/vim-easytags', {
\   'hook_add': "
\     let g:easytags_file = '~/.config/nvim/tags'\n
\     set tags=./.tags\n
\     let g:easytags_dynamic_files = 1
\   "
\ })
call dein#add('scrooloose/syntastic')
call dein#add('junegunn/fzf', {'build': './install', 'merged': 0})
call dein#add('junegunn/fzf.vim', { 
\   'depends': 'fzf',
\   'hook_add': "
\     let g:fzf_buffers_jump = 1\n
\     nmap <leader><tab> <plug>(fzf-maps-n)\n
\     xmap <leader><tab> <plug>(fzf-maps-x)\n
\     omap <leader><tab> <plug>(fzf-maps-o)\n
\     imap <c-x><c-k> <plug>(fzf-complete-word)\n
\     imap <c-x><c-f> <plug>(fzf-complete-path)\n
\     imap <c-x><c-j> <plug>(fzf-complete-file-ag)\n
\     imap <c-x><c-l> <plug>(fzf-complete-line)\n
\     map <c-p> :Files<CR>\n
\     map <C-@> :Buffers<CR>\n
\     map <leader>q :BTags<CR>\n
\     map <leader>f :Ag \n
\     map <c-q> :Tags<CR>\n
\   "
\ })
call dein#add('chriskempson/base16-vim')
call dein#add('valloric/youcompleteme', {'merged': 0})
call dein#add('scrooloose/nerdtree', {
\   'hook_add': "
\     map <leader>n :NERDTreeToggle<CR>\n
\   "
\ })
call dein#add('tpope/vim-eunuch')

call dein#end()

" TODO add syntastic checking

if dein#check_install()
  call dein#install()
endif


" call dein#update()


set tags=./.tags;,.tags;

set cursorline
if exists('+colorcolumn')
  set colorcolumn=80
endif
set background=dark

syntax enable
filetype plugin indent on

set listchars=tab:▸\ ,trail:·,nbsp:·
set list
set ts=2 sts=2 sw=2 expandtab
set tw=80
set rnu
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let base16colorspace=256
colorscheme base16-railscasts

let &t_SI = "\<Esc>]12;orange\x7"
" use a red cursor otherwise
let &t_EI = "\<Esc>]12;red\x7"
silent !echo -ne "\033]12;red\007"
if &term =~ "xterm\\|rxvt\\|xterm-termite"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
endif

