set nocompatible
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

call dein#begin(expand('~/.cache/dein'))
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
"\    let g:airline_theme=\"badwolf\"\n
"\    let g:airline_theme=\"twofirewatch\"\n
""\    let g:airline_theme=\"hybrid\"\n
" \    let g:airline_theme=\"badwolf\"\n
" \    let g:airline_theme=\"archery\"\n
" \    let g:airline_theme=\"solarized_flood\"\n
call dein#add('bling/vim-airline', {
\  'hook_add': "
\    let g:airline_theme=\"nord\"\n
\    let g:airline_powerline_fonts = 1\n
\    let g:airline#extensions#branch#enabled = 1\n
\    let g:airline#extensions#tabline#fnamemod = ':t'\n
\    let g:airline#extensions#tabline#enabled = 1\n
\    let g:airline#extensions#tabline#buffer_nr_show = 1\n
\    let g:airline_section_y = 'W%{winnr()} %{airline#util#wrap(airline#parts#ffenc(),0)}'
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
" call dein#add('terryma/vim-multiple-cursors')
call dein#add('mg979/vim-visual-multi', {
\    'rev': 'dev',
\    'hook_add': "
\       let g:VM_mouse_mappings = 1\n
\       let g:VM_theme = 'nord'
\    "
\  })
call dein#add('xolox/vim-misc')
" NOTE buggy because of https://github.com/ludovicchabant/vim-gutentags/issues/168
" call dein#add('ludovicchabant/vim-gutentags', {
" \   'hook_add': "
" \     let g:gutentags_ctags_executable_javascript = 'jsctags'\n
" \     let g:gutentags_project_root = ['.gutctags', 'tags']\n
" \   "
" \ })
" call dein#add('autozimu/LanguageClient-neovim', {
"     \ 'rev': 'next',
"     \ 'build': 'bash install.sh',
"     \ })
" " \   'javascript.jsx': ['javascript-typescript-stdio'],
" let g:LanguageClient_serverCommands = {
" \   'javascript': ['flow', 'lsp', '--from', './node_modules/.bin'],
" \   'javascript.jsx': ['flow', 'lsp', '--from', './node_modules/.bin'],
" \   'typescript': ['javascript-typescript-stdio'],
" \   'javascriptreact': ['flow', 'lsp', '--from', './node_modules/.bin'],
" \   'typescript.tsx': ['javascript-typescript-stdio'],
" \   'typescriptreact': ['javascript-typescript-stdio'],
" \   'ruby': ['language_server-ruby'],
" \   'rust': ['~/.cargo/bin/ra_lsp_server'],
" \   'dart': ['/usr/bin/dart', '/opt/dart-sdk/bin/snapshots/analysis_server.dart.snapshot', '--lsp'],
" \ }
let g:rustfmt_autosave = 1
" let g:LanguageClient_diagnosticsList = "Location"
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> gD :vs<CR>:call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> gi :call LanguageClient#textDocument_documentSymbol()<CR>
" nnoremap <silent> gr :call LanguageClient#textDocument_rename()<CR>
" nnoremap <silent> gl :call LanguageClient#textDocument_codeAction()<CR>
" let g:LanguageClient_rootMarkers = {
"   \ 'javascript': ['package.json', '.flowconfig'],
"   \ 'javascript.jsx': ['package.json', '.flowconfig'],
"   \ 'dart': ['pubspec.yaml']
" \ }

" let g:LanguageClient_rootMarkers = {
"     \ 'c': ['<some_relative_path>/compile_commands.json'],
"     \ 'cpp': ['<some_relative_path>/compile_commands.json']
"     \ }
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
call dein#add('junegunn/vim-easy-align', {
\    'hook_add': "
\    au FileType markdown vmap <Leader>. :EasyAlign*<Bar><Enter>
\    "
\ })
call dein#add('junegunn/vim-peekaboo')
" C-@ and C-Space are the same, one is to support older terminals
" \     map <c-q> :Tags<CR>\n
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
\   "
\ })
call dein#add('liuchengxu/vista.vim')
let g:vista_default_executive = 'lcn'
let g:vista_fzf_preview = ['right:50%']
map <c-q> :Vista finder lcn<CR>


call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :vs<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" NOTE: What does this even do
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,typescriptreact,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap     <leader>ac             <Plug>(coc-codeaction)
" LinuCC added dis
nma <silent> <space>t      <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap     <leader>qf             <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-;> <Plug>(coc-range-select)
xmap <silent> <C-;> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

call dein#add('chriskempson/base16-vim')
" call dein#add('valloric/youcompleteme', {'merged': 0})
" call dein#add('Shougo/deoplete.nvim', {
" \   'hook_add': "
" \     let g:deoplete#enable_at_startup = 1\n
" \     function! Multiple_cursors_before()\n
" \         if exists('g:deoplete#disable_auto_complete')\n
" \     	   let g:deoplete#disable_auto_complete = 1\n
" \         endif\n
" \     endfunction\n
" \\n
" \     function! Multiple_cursors_after()\n
" \         if exists('g:deoplete#disable_auto_complete')\n
" \     	   let g:deoplete#disable_auto_complete = 0\n
" \         endif\n
" \     endfunction\n
" \   "
" \ })

" call dein#add('tbodt/deoplete-tabnine', { 'build': './install.sh' })
" call deoplete#custom#source('tabnine', 'rank', 20000)
" call deoplete#custom#option('candidate_marks',
"       \ ['A', 'S', 'D', 'F', 'G',
"       \  'Q', 'W', 'E', 'R', 'T',
"       \  'H', 'J', 'K', 'L', ';',
"       \  'Y', 'U', 'I', 'O', 'P'
"       \ ])
" inoremap <expr>A       deoplete#insert_candidate(0)
" inoremap <expr>S       deoplete#insert_candidate(1)
" inoremap <expr>D       deoplete#insert_candidate(2)
" inoremap <expr>F       deoplete#insert_candidate(3)
" inoremap <expr>G       deoplete#insert_candidate(4)
" inoremap <expr>Q       deoplete#insert_candidate(5)
" inoremap <expr>W       deoplete#insert_candidate(6)
" inoremap <expr>E       deoplete#insert_candidate(7)
" inoremap <expr>R       deoplete#insert_candidate(8)
" inoremap <expr>T       deoplete#insert_candidate(9)
" inoremap <expr>H       deoplete#insert_candidate(10)
" inoremap <expr>J       deoplete#insert_candidate(11)
" inoremap <expr>K       deoplete#insert_candidate(12)
" inoremap <expr>L       deoplete#insert_candidate(13)
" inoremap <expr>;       deoplete#insert_candidate(14)
" inoremap <expr>Y       deoplete#insert_candidate(15)
" inoremap <expr>U       deoplete#insert_candidate(16)
" inoremap <expr>I       deoplete#insert_candidate(17)
" inoremap <expr>O       deoplete#insert_candidate(18)
" inoremap <expr>P       deoplete#insert_candidate(19)

"
" inoremap <expr><leader>a       pumvisible() ?
" \ deoplete#insert_candidate(0) : 'a'
" inoremap <expr><leader>s       pumvisible() ?
" \ deoplete#insert_candidate(1) : 's'
" inoremap <expr><leader>d       pumvisible() ?
" \ deoplete#insert_candidate(2) : 'd'
" inoremap <expr><leader>f       pumvisible() ?
" \ deoplete#insert_candidate(3) : 'f'
" inoremap <expr><leader>g       pumvisible() ?
" \ deoplete#insert_candidate(4) : 'G'
"
" inoremap <expr><leader>q       pumvisible() ?
" \ deoplete#insert_candidate(5) : 'q'
" inoremap <expr><leader>w       pumvisible() ?
" \ deoplete#insert_candidate(6) : 'w'
" inoremap <expr><leader>e       pumvisible() ?
" \ deoplete#insert_candidate(7) : 'e'
" inoremap <expr><leader>r       pumvisible() ?
" \ deoplete#insert_candidate(8) : 'r'
" inoremap <expr><leader>t       pumvisible() ?
" \ deoplete#insert_candidate(9) : 't'
"
" inoremap <expr><leader>h       pumvisible() ?
" \ deoplete#insert_candidate(10) : 'h'
" inoremap <expr><leader>j       pumvisible() ?
" \ deoplete#insert_candidate(11) : 'j'
" inoremap <expr><leader>k       pumvisible() ?
" \ deoplete#insert_candidate(12) : 'k'
" inoremap <expr><leader>l       pumvisible() ?
" \ deoplete#insert_candidate(13) : 'l'
" inoremap <expr><leader>;       pumvisible() ?
" \ deoplete#insert_candidate(14) : ';'
"
" inoremap <expr><leader>y       pumvisible() ?
" \ deoplete#insert_candidate(15) : 'y'
" inoremap <expr><leader>u       pumvisible() ?
" \ deoplete#insert_candidate(16) : 'u'
" inoremap <expr><leader>i       pumvisible() ?
" \ deoplete#insert_candidate(17) : 'i'
" inoremap <expr><leader>o       pumvisible() ?
" \ deoplete#insert_candidate(18) : 'o'
" inoremap <expr><leader>p       pumvisible() ?
" \ deoplete#insert_candidate(19) : 'p'

" imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" completeopt Affects the visual representation of what happens after you hit <C-x><C-o>
" https://neovim.io/doc/user/insert.html#i_CTRL-X_CTRL-O
" https://neovim.io/doc/user/options.html#'completeopt'
"
" This will show the popup menu even if there's only one match (menuone),
" prevent automatic selection (noselect) and prevent automatic text injection
" into the current line (noinsert).
call dein#add('svermeulen/vim-yoink', {
\  'name': "yarp",
\  'hook_add': "
\    let g:yoinkSyncNumberedRegisters = 1\n
\  "
\ })
"  \     let g:ycm_server_python_interpreter = \"/usr/bin/python\"
call dein#add('scrooloose/nerdtree', {
\   'hook_add': "
\     map <leader>n :NERDTreeToggle<CR>\n
\     map <leader>m :NERDTreeFind<CR>\n
\   "
\ })
" call dein#add('luochen1990/rainbow')
call dein#add('lervag/vimtex')
call dein#add('joshdick/onedark.vim')
call dein#add('kshenoy/vim-signature')
call dein#add('freeo/vim-kalisi')
call dein#add('ayu-theme/ayu-vim')
call dein#add('arcticicestudio/nord-vim')
call dein#add('rakr/vim-two-firewatch')
call dein#add('icymind/NeoSolarized')
call dein#add('lifepillar/vim-solarized8')
call dein#add('MaxSt/flatcolor')
call dein#add('rakr/vim-one')
call dein#add('mhinz/vim-janah')
call dein#add('AlessandroYorba/Alduin')
call dein#add('AlessandroYorba/Arcadia')
call dein#add('AlessandroYorba/Sierra')
call dein#add('jacoborus/tender.vim')
call dein#add('kristijanhusak/vim-hybrid-material')
call dein#add('ajmwagar/vim-deus')
call dein#add('morhetz/gruvbox')
call dein#add('nanotech/jellybeans.vim')
call dein#add('tpope/vim-eunuch')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('mattn/emmet-vim')
call dein#add('sheerun/vim-polyglot')
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-dadbod')
call dein#add('AndrewRadev/splitjoin.vim')
call dein#add('vim-scripts/keepcase.vim')

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
call dein#add('maxmellon/vim-jsx-pretty', {
\   'hook_add': "
\   "
\ })
call dein#add('galooshi/vim-import-js', {
\   'hook_add': "
\     silent! nnoremap <unique> <silent> <Leader>i :ImportJSFix<CR>\n
\     silent! nnoremap <unique> <silent> <Leader>g :vsplit<CR>:ImportJSGoto<CR>\n
\     silent! nnoremap <unique> <silent> <Leader>w :ImportJSWord<CR>\n
\   "
\ })
call dein#add('prettier/vim-prettier', {
\   'do': 'yarn install',
\  'hook_add': "
\    let g:prettier#config#tab_width = 4\n
\    let g:prettier#autoformat = 0\n
\  "
\ })
call dein#add('vim-scripts/DrawIt')

call dein#add('neomake/neomake', {
\   'hook_add': ""
\ })
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = $PWD . '/node_modules/.bin/eslint'
" let g:neomake_javascript_flow_exe = $PWD . '/node_modules/.bin/flow'
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
" \      let g:gitgutter_sign_added = ''\n
" \      let g:gitgutter_sign_modified = ''\n
" \      let g:gitgutter_sign_removed = ''\n
" call dein#add('airblade/vim-gitgutter', {
" \    'hook_add': "
" \      let g:gitgutter_realtime = 0\n
" \      let g:gitgutter_eager = 0
" \    "
" \  })
call dein#add('janko-m/vim-test', {
\    'hook_add': "
\      nmap <silent> t<C-n> :w<CR>:TestNearest<CR>\n
\      nmap <silent> t<C-f> :w<CR>:TestFile<CR>   \n
\      nmap <silent> t<C-s> :TestSuite<CR>  \n
\      nmap <silent> t<C-l> :TestLast<CR>   \n
\      nmap <silent> t<C-g> :TestVisit<CR>  \n
\      let test#strategy = \"dispatch\"\n
\    "
\  })
let test#strategy = "neovim"
" let test#custom_runners = {
"   'dart': ['FlutterRunner'],
" }
" Necessary for Quickfix-window for `vim-test`
call dein#add('tpope/vim-dispatch')
call dein#add('chrisbra/NrrwRgn', {
\   'hook_add': "
\     silent! vnoremap <Leader><CR> <Esc>:20split<CR>:NRV!<CR>\n
\     let g:nrrw_rgn_nohl = 1\n
\   "
\ })
call dein#add('dart-lang/dart-vim-plugin', {
\   'hook_add': "
\     let g:dart_format_on_save = 1\n
\   "
\ })

" call dein#add('roxma/nvim-yarp', { 'name': "nvim-yarp" })
" call dein#add('ncm2/ncm2', {
" \  'on_source': "nvim-yarp",
" \  'name': "ncm2",
" \  'hook_add': "
" \    set completeopt=noinsert,menuone,noselect\n
" \    autocmd BufEnter * call ncm2#enable_for_buffer()\n
" \  "
" \ })
" call dein#add('ncm2/ncm2-bufword', {'on_source': "ncm2"})
" call dein#add('fgrsnau/ncm2-otherbuf', {'on_source': "ncm2"})
" call dein#add('svermeulen/ncm2-yoink', {'on_source': "ncm2"})
" call dein#add('ncm2/ncm2-path', {'on_source': "ncm2"})
" " call dein#add('ncm2/ncm2-tern')
" " call dein#add('ncm2/ncm2-cssomni', {'on_source': "ncm2"})
" " call dein#add('ncm2/ncm2-racer')
" call dein#add('pbogut/ncm2-alchemist', {'on_source': "ncm2"})
" call dein#add('ncm2/ncm2-ultisnips', {'on_source': "ncm2"})


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

" Show preview of command, as described here https://github.com/ncm2/ncm2/issues/74
set completeopt+=preview

call neomake#configure#automake('nrwi', 500)

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
set number relativenumber
set nu rnu
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

let g:neosolarized_visibility = "high"
let g:neosolarized_italic = 1

let g:solarized_termtrans = 1

let g:one_allow_italics = 1

let g:jellybeans_use_term_italics = 1

let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1

set icm=split

" Inbuild term configuration

" Breaks <Esc> for other commands, for example buffer selection
" tnoremap <C-Esc> <C-\><C-n>
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

" colo gruvbox
" colo sierra
" colo tender
" colo hybrid_reverse
" colo one
colo nord
" colorscheme jellybeans
" colo ayu

" colo flatcolor
" let base16colorspace=256
" colorscheme base16-ocean
" colorscheme gruvbox-custom
" colorscheme two-firewatch
" colo onedark
" colo kalisi
" colo hybrid_material
" colo NeoSolarized
" colo solarized8
" colo janah
" colorscheme archery
" colorscheme deus

" Use old regex-engine.
" See http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
" for why.
" TODO: If Neovims new Regex-Engine hits, try without this statement.
" set re=1

set updatetime=250

" Use noice mouse functionality
set mouse=a

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" :SAg <case-sensitive-search-string>
command! -bang -nargs=* SAg
  \ call fzf#vim#ag(<q-args>, '-s', <bang>0)
function! s:ag_in(...)
  call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
endfunction
function! s:ag_of_word()
  call fzf#vim#ag(expand('<cword>'))
endfunction
command! -nargs=+ -complete=dir AgIn call s:ag_in(<f-args>)
" Search with \f for the current word under cursor in project
nnoremap <silent> <Leader>f :Ag <C-R><C-W><CR>

" Close tab on \c
nnoremap <silent> <Leader>c :tabclose<CR>

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

" let g:ycm_key_invoke_completion = '<C-l>'

nnoremap <CR> :noh<CR><CR>

"
" Some personal color changes
"

" Italic, because its cool
" highlight String gui=italic cterm=italic
" highlight Comment gui=italic cterm=italic

" Bold, because its readable
highlight CursorLineNr gui=bold cterm=bold
" highlight LineNr guifg=#777777
" highlight Comment guifg=#777777
highlight MatchParen gui=bold cterm=bold
highlight Function gui=bold cterm=bold
highlight Statement gui=bold cterm=bold
highlight PreProc gui=bold cterm=bold
highlight Type gui=bold cterm=bold
highlight Todo gui=bold cterm=bold

highlight Conceal guibg=none

" Make diffs easy to read
" highlight DiffAdd guibg=#445444 guifg=#ccc
" highlight DiffChange guibg=#444454 guifg=#ccc
" highlight DiffDelete guibg=#544444 guifg=#ccc
" highlight DiffText guibg=#444D4D guifg=#ccc

let g:indentLine_color_gui = '#444D4D'
let g:indentLine_char = '┆'
let g:indentLine_fileTypeExclude = ['markdown']

" Transparent background
highlight Normal guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none
" highlight SignColumn guibg=none ctermbg=none
" highlight LineNr guibg=none

hi IndentGuidesOdd  guibg=none ctermbg=none
hi IndentGuidesEven guibg=none ctermbg=none

" call LanguageClient#setLoggingLevel("DEBUG")

" Keep at end!
set exrc
set secure
