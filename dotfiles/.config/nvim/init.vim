set runtimepath+=/home/linucc/.config/nvim/bundles/repos/github.com/Shougo/dein.vim
call dein#begin(expand('/home/linucc/.config/nvim/bundles'))

call dein#add('tpope/vim-repeat', {
  \ 'on_map': '.'})
call dein#add('tomtom/tcomment_vim', {
  \ 'on_map': ['gc', 'g<', 'g>', '<C-_>', '<Leader>_'],
  \ })
" NOTE: Does not play well with vim-multiple-cursors
" NOTE: autocmd WinLeave * silent < - Could be the source of nasty bugs later on
call dein#add('easymotion/vim-easymotion', {
\    'on_map': [['n', '<Plug>']],
\    'hook_add': "
\        nmap w <Plug>(easymotion-lineforward)\n
\        nnoremap W     w\n
\        nmap b <Plug>(easymotion-linebackward)\n
\        nnoremap B     b\n
\        nmap [Alt]j <Plug>(easymotion-j)\n
\        nmap [Alt]k <Plug>(easymotion-k)\n
\        nmap <Leader>; <Plug>(easymotion-overwin-w)\n
\        autocmd WinLeave * silent\n
\        nmap ' <Plug>(easymotion-prefix)\n
\        let g:EasyMotion_startofline = 0\n
\        let g:EasyMotion_show_prompt = 0\n
\        let g:EasyMotion_verbose = 0\n
\    "
\ })
call dein#add('Raimondi/delimitMate')
call dein#add('vim-airline/vim-airline-themes')
"\    let g:airline_theme=\"twofirewatch\"\n
""\    let g:airline_theme=\"hybrid\"\n
" \    let g:airline_theme=\"badwolf\"\n
call dein#add('bling/vim-airline', {
\  'hook_add': "
\    let g:airline_theme=\"tender\"\n
\    let g:airline_powerline_fonts = 1\n
\    let g:airline#extensions#tabline#enabled = 1\n
\    let g:airline#extensions#branch#enabled = 1\n
\    let g:airline#extensions#tabline#fnamemod = ':t'
\  "
\ })
" call dein#add('nathanaelkane/vim-indent-guides', {
" \  'hook_add': "
" \     let g:indent_guides_guide_size = 1
" \  "
" \ })
call dein#add('yggdroot/indentLine')
let g:indentLine_setColors = 0
call dein#add('roryokane/detectindent')
call dein#add('tpope/vim-rails')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('xolox/vim-misc')
call dein#add('ludovicchabant/vim-gutentags', {
\   'hook_add': "
\     let g:gutentags_ctags_executable_javascript = 'jsctags'\n
\     let g:gutentags_project_root = ['.gutctags', 'tags']\n
\   "
\ })
" call dein#add('xolox/vim-easytags', {
" \   'hook_add': "
" \     let g:easytags_file = '~/.config/nvim/tags'\n
" \     set tags=./.tags\n
" \     let g:easytags_dynamic_files = 1\n
" \     let g:easytags_auto_highlight = 0
" \   "
" \ })
" call dein#add('scrooloose/syntastic', {
" \    'hook_add': "
" \      let g:syntastic_sass_checkers = []\n
" \      let g:syntastic_scss_checkers = []\n
" \      let g:syntastic_javascript_checkers = ['eslint']\n
" \    "
" \ })
call dein#add('tpope/vim-capslock')
call dein#add('junegunn/fzf', {'build': './install', 'merged': 0})
" C-@ and C-Space are the same, one is to support older terminals
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
\     map <C-Space> :Buffers<CR>\n
\     map <leader>q :BTags<CR>\n
\     map <leader>f :Ag \n
\     map <c-q> :Tags<CR>\n
\   "
\ })
call dein#add('chriskempson/base16-vim')
" call dein#add('valloric/youcompleteme', {'merged': 0})
call dein#add('Shougo/deoplete.nvim', {
\   'hook_add': "
\     let g:deoplete#enable_at_startup = 1\n
\     function! Multiple_cursors_before()\n
\         if exists('g:deoplete#disable_auto_complete')\n
\     	   let g:deoplete#disable_auto_complete = 1\n
\         endif\n
\     endfunction\n
\\n
\     function! Multiple_cursors_after()\n
\         if exists('g:deoplete#disable_auto_complete')\n
\     	   let g:deoplete#disable_auto_complete = 0\n
\         endif\n
\     endfunction\n
\   "
\ })
" imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
call dein#add('scrooloose/nerdtree', {
\   'hook_add': "
\     map <leader>n :NERDTreeToggle<CR>\n
\     map <leader>m :NERDTreeFind<CR>\n
\     let g:ycm_server_python_interpreter = \"/usr/bin/python\"
\   "
\ })
call dein#add('lervag/vimtex')
call dein#add('joshdick/onedark.vim')
call dein#add('kshenoy/vim-signature')
call dein#add('freeo/vim-kalisi')
call dein#add('rakr/vim-two-firewatch')
call dein#add('AlessandroYorba/Alduin')
call dein#add('AlessandroYorba/Arcadia')
call dein#add('AlessandroYorba/Sierra')
call dein#add('jacoborus/tender.vim')
call dein#add('kristijanhusak/vim-hybrid-material')
call dein#add('nanotech/jellybeans.vim')
call dein#add('tpope/vim-eunuch')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('mattn/emmet-vim')
call dein#add('sheerun/vim-polyglot')
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-fugitive')
call dein#add('AndrewRadev/splitjoin.vim')

" vim-orgmode and corresponding, needed plugins
" call dein#add('jceb/vim-orgmode')
" FIXME Contains fix for python 3.6+, can be removed once PR
"   https://github.com/jceb/vim-orgmode/pull/266 merged.
call dein#add('detegr/vim-orgmode')
call dein#add('xolox/vim-notes', {
\    'hook_add': "
\      let g:notes_directories = ['~/.lutz/notes']\n
\      let g:notes_ruler_text = '●▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬● ┻━┻︵ \\(°□°)/ ︵┻━┻ ●▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬●'\n
\    "
\ })



call dein#add('tpope/vim-speeddating')
call dein#add('majutsushi/tagbar')
call dein#add('othree/yajs.vim')
call dein#add('pangloss/vim-javascript', { 'rev': 'master' })
call dein#add('mxw/vim-jsx', {
\   'hook_add': "
\     let g:jsx_ext_required = 0\n
\     let g:javascript_plugin_flow = 1
\   "
\ })
call dein#add('vim-scripts/DrawIt')

call dein#add('neomake/neomake', {
\   'hook_add': "autocmd BufWritePre * :Neomake"
\ })
let g:neomake_javascript_enabled_makers = ['flow', 'eslint']
let g:neomake_javascript_eslint_exe = $PWD . '/node_modules/.bin/eslint'
let g:neomake_javascript_flow_exe = $PWD . '/node_modules/.bin/flow'
" For BL
" let g:neomake_scss_enabled_makers = ['stylelint']
" let g:neomake_scss_stylelint_maker = {
" \ 'exe': 'stylelint',
" \ 'args': ['--syntax', 'scss', '--config', '/home/linucc/code/javascript/brandslisten/bl-fe-cli/resources/.stylelintrc', '--configBasedir', '/usr/lib/node_modules'],
" \ 'errorformat':
"             \ '%+P%f,' .
"                 \ '%*\s%l:%c  %t  %m,' .
"             \ '%-Q'
" \ }
"
call dein#add('editorconfig/editorconfig-vim', {
\    'hook_add': "
\      let g:EditorConfig_exclude_patterns = ['fugitive://.*']\n
\    "
\  })
" \    let g:gitgutter_sign_added = ''\n
" \    let g:gitgutter_sign_modified = ''\n
" \    let g:gitgutter_sign_removed = ''\n
call dein#add('airblade/vim-gitgutter', {
\    'hook_add': "
\      let g:gitgutter_sign_added = ''\n
\      let g:gitgutter_sign_modified = ''\n
\      let g:gitgutter_sign_removed = ''\n
\      let g:gitgutter_realtime = 0\n
\      let g:gitgutter_eager = 0
\    "
\  })

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


nmap w <Plug>(easymotion-lineforward)
nnoremap W     w
nmap b <Plug>(easymotion-linebackward)
nnoremap B     b
nmap [Alt]j <Plug>(easymotion-j)
nmap [Alt]k <Plug>(easymotion-k)
nmap <Leader>; <Plug>(easymotion-overwin-w)
autocmd WinLeave * silent
nmap ' <Plug>(easymotion-prefix)
let g:EasyMotion_startofline = 0
let g:EasyMotion_show_prompt = 0
let g:EasyMotion_verbose = 0



let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsListSnippets = "<c-e>"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'


" TODO add syntastic checking

if dein#check_install()
  call dein#install()
endif


" call dein#update()


set tags=./.tags;,.tags;

set cursorline
if exists('+colorcolumn')
  set colorcolumn=80,100,120,160
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
" set ts=2 sts=2 sw=2 expandtab
set tw=100
set wrap
set rnu
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" Make sure vim uses the correc save-strategy that works with file-watchers
" https://github.com/webpack/webpack/issues/781
set backupcopy=yes

set ttyfast
set lazyredraw

" Put all local changes in the Quickfix-list
command Gdiffs cexpr system('git diff \| diff-hunk-list')

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

let g:two_firewatch_italics=1
let g:enable_bold_font = 1

set icm=split

" let base16colorspace=256
" colorscheme base16-ocean
colorscheme gruvbox-custom
" colorscheme jellybeans
" colorscheme two-firewatch
" colo onedark
" colo kalisi
" colo hybrid_material
" colo hybrid_reverse
" colo sierra
colo tender

" Use old regex-engine.
" See http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
" for why.
" TODO: If Neovims new Regex-Engine hits, try without this statement.
" set re=1

set updatetime=250

" Use noice mouse functionality
set mouse=a

function! s:ag_in(...)
  call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
endfunction
function! s:ag_of_word()
  call fzf#vim#ag(expand('<cword>'))
endfunction
command! -nargs=+ -complete=dir AgIn call s:ag_in(<f-args>)
" Search with \f for the current word under cursor in project
nnoremap <silent> <Leader>f :Ag <C-R><C-W><CR>

" :SAg <case-sensitive-search-string>
command! -bang -nargs=* SAg
  \ call fzf#vim#ag(<q-args>, '-s', <bang>0)

" Map <leader> <num> to go to the window with that num
let i = 1
while i <= 9
    execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile

" gp == select last pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Duplicate tab. Nice when you need a different view of the current one but keep
" the current one so you can come back to it at a later point.
command! -bar DuplicateTabpane
      \ let s:sessionoptions = &sessionoptions |
      \ try |
      \   let &sessionoptions = 'blank,help,folds,winsize,localoptions' |
      \   let s:file = tempname() |
      \   execute 'mksession ' . s:file |
      \   tabnew |
      \   execute 'source ' . s:file |
      \ finally |
      \   silent call delete(s:file) |
      \   let &sessionoptions = s:sessionoptions |
      \   unlet! s:file s:sessionoptions |
      \ endtry

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

function! GettextSelect(...)
  let prefix = @x
  " let method_def_search = '\v_\([^\)]{-}\)'
  let method_def_search = "\\v_\\(([\\\"\\'])(\\\\.|[^\\1]|1){-}\\1[^\\)]{-}\\)"
  execute "normal! /" . method_def_search . "\<CR>"
  execute "normal! v//e\<CR>\"ay"
  let sel = @a
  if a:0 == 0
    call inputsave()
    let yaml_path = input('Enter new YAML-Path for ' . sel . ': ' . prefix)
    call inputrestore()
  else
    let yaml_path = a:1
  endif
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
  let @a = 'Bl::TranslationHelper.t(' . @a
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

function! GetVisualSelection()
  " Why is this not a built-in Vim script function?!
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  return join(lines, "\n")
endfunction


let g:ycm_key_invoke_completion = '<C-l>'

nnoremap <CR> :noh<CR><CR>

"
" Some personal color changes
"

" Italic, because its cool
highlight String gui=italic cterm=italic
highlight Comment gui=italic cterm=italic

" Bold, because its readable
highlight CursorLineNr gui=bold cterm=bold
highlight LineNr guifg=#666666
highlight MatchParen gui=bold cterm=bold
highlight Function gui=bold cterm=bold
highlight Statement gui=bold cterm=bold
highlight PreProc gui=bold cterm=bold
highlight Type gui=bold cterm=bold
highlight Todo gui=bold cterm=bold

highlight Conceal guifg=#007766 guibg=none

" Make diffs easy to read
" highlight DiffAdd guibg=#445444 guifg=#ccc
" highlight DiffChange guibg=#444454 guifg=#ccc
" highlight DiffDelete guibg=#544444 guifg=#ccc
" highlight DiffText guibg=#444D4D guifg=#ccc

" let g:indentLine_color_gui = '#444D4D'
let g:indentLine_char = '┆'

" Transparent background
highlight Normal guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none
highlight SignColumn guibg=none ctermbg=none

hi IndentGuidesOdd  guibg=black ctermbg=black
hi IndentGuidesEven guibg=darkgrey ctermbg=darkgrey
