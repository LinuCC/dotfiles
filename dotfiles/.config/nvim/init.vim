set runtimepath^=/home/linucc/.config/nvim/bundles/repos/github.com/Shougo/dein.vim
call dein#begin(expand('/home/linucc/.config/nvim/bundles'))

call dein#add('tpope/vim-repeat', {
  \ 'on_map': '.'})
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
\    let g:airline_theme=\"badwolf\"\n
\    let g:airline_powerline_fonts = 1\n
\    let g:airline#extensions#tabline#enabled = 1\n
\    let g:airline#extensions#branch#enabled = 1\n
\    let g:airline#extensions#tabline#fnamemod = ':t'
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
\     map <leader>m :NERDTreeFind<CR>\n
\     let g:ycm_server_python_interpreter = \"/usr/bin/python\"
\   "
\ })
call dein#add('joshdick/onedark.vim')
call dein#add('tpope/vim-eunuch')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('mattn/emmet-vim')
call dein#add('sheerun/vim-polyglot')
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-fugitive')

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsListSnippets = "<c-e>"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

" Expand snippets with <enter>
" let g:UltiSnipsExpandTrigger = "<nop>"
" let g:ulti_expand_or_jump_res = 0
" function ExpandSnippetOrCarriageReturn()
"     let snippet = UltiSnips#ExpandSnippetOrJump()
"     if g:ulti_expand_or_jump_res > 0
"         return snippet
"     else
"         return "\<CR>"
"     endif
" endfunction
" inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>"

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

map <F2> :mks! vimsession<CR>
map <F5> :call GettextSelect()<CR>zzh
map <F6> :call GettextSelectRoot()<CR>zzh
map <F10> :call SetPrefix()<CR>
autocmd BufWritePre * :%s/\s\+$//e
set listchars=tab:▸\ ,trail:·,nbsp:·
set list
set ts=2 sts=2 sw=2 expandtab
set tw=80
set rnu
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" let base16colorspace=256
" colorscheme base16-ocean
" colorscheme gruvbox-custom
colo onedark

" Use old regex-engine.
" See http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
" for why.
" TODO: If Neovims new Regex-Engine hits, try without this statement.
set re=1

function! s:ag_in(...)
  call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
endfunction
command! -nargs=+ -complete=dir AgIn call s:ag_in(<f-args>)

function! Lol()
  execute "normal! /_(.*)\<Cr>"
  execute "normal! nv//e\<CR>"
endfunction

function! Stuff()
  normal! /\v([\"\'])(\\.|[^\\1]|1)+\\1\<CR>
  normal nv//e<CR>
  let translation = GetVisualSelection()
  let @z = translation
endfunction

function! SetPrefix()
  call inputsave()
  let path = input('Enter new YAML-prefix (current: ' . @x . ') : ')
  call inputrestore()
  if(empty(path)) | return | endif
  let @x = path
endfunction

function! GettextSelect()
  let prefix = @x
  " let method_def_search = '\v_\([^\)]{-}\)'
  let method_def_search = "\\v_\\(([\\\"\\'])(\\\\.|[^\\1]|1){-}\\1[^\\)]{-}\\)"
  execute "normal! /" . method_def_search . "\<CR>"
  execute "normal! v//e\<CR>\"ay"
  let sel = @a
  call inputsave()
  let yaml_path = input('Enter new YAML-Path for ' . sel . ': ' . prefix)
  call inputrestore()
  if(empty(yaml_path)) | return | endif
  let @a = "'" . prefix . yaml_path . "'"
  " {-} == non-greedy
  execute "normal! /\\v([\\\"\\'])(\\\\.|[^\\1]|1){-}\\1\<CR>"
  " execute "normal! \<ESC>"
  execute "normal! v//e\<CR>\"zy"
  let @z = escape(@z, "%#")
  echo 'Replaced ' . @z . ' with ' .@a
  " let translation = GetVisualSelection()
  " let @z = translation
  " Replace the translation-string with the yaml-path
  silent exec "! yamler " . prefix . yaml_path . ' ' . @z
  " Replace the string in the code
  let @a = 't(' . @a
  silent :s/\v_\(([\"\'])(\\.|[^\1]|1){-}\1/\=@a/
  " silent :s/_('/t('/
endfunction

function! GettextSelectRoot()
  let prefix = ''
  " let method_def_search = '\v_\([^\)]{-}\)'
  let method_def_search = "\\v_\\(([\\\"\\'])(\\\\.|[^\\1]|1){-}\\1[^\\)]{-}\\)"
  execute "normal! /" . method_def_search . "\<CR>"
  execute "normal! v//e\<CR>\"ay"
  let sel = @a
  call inputsave()
  let yaml_path = input('Enter new YAML-Path for ' . sel . ': ')
  call inputrestore()
  if(empty(yaml_path)) | return | endif
  let @a = "'" . prefix . yaml_path . "'"
  " {-} == non-greedy
  execute "normal! /\\v([\\\"\\'])(\\\\.|[^\\1]|1){-}\\1\<CR>"
  " execute "normal! \<ESC>"
  execute "normal! v//e\<CR>\"zy"
  let @z = escape(@z, "%")
  echo 'Replaced ' . @z . ' with ' .@a
  " let translation = GetVisualSelection()
  " let @z = translation
  " Replace the translation-string with the yaml-path
  silent exec "! yamler " . prefix . yaml_path . ' ' . @z
  " Replace the string in the code
  let @a = 't(' . @a
  silent :s/\v_\(([\"\'])(\\.|[^\1]|1){-}\1/\=@a/
  " silent :s/_('/t('/
endfunction

function! GetVisualSelection()
  " Why is this not a built-in Vim script function?!
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  return join(lines, "\n")
endfunction

nnoremap <CR> :noh<CR><CR>

"
" Some personal color changes
"

" Italic, because its cool
highlight String gui=italic
highlight Comment gui=italic

" Make diffs easy to read
highlight DiffAdd guibg=#445444
highlight DiffChange guibg=#444454
highlight DiffDelete guibg=#544444
highlight DiffText guibg=#444D4D

" Transparent background
highlight Normal guibg=none
highlight NonText guibg=none
