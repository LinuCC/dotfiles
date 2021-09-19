" For some reason `vim.cmd [[highlight <...>]]` wont work in the lua files, so I throw every
" highlight in here, too
" TODO Remove dis file

hi TSConditional guifg=#88c0d0
hi TSConstant guifg=#d8dee9 gui=bold
" hi TSConstructor guifg=#8FBCBB gui=bold
hi TSException guifg=#88c0d0 gui=italic
" hi TSKeyword guifg=#5e81ac
hi TSKeyword guifg=#b48ead
" hi TSMethod guifg=#8FBCBB gui=bold
hi TSProperty guifg=#81a1c1 gui=italic
hi TSRepeat guifg=#88c0d0
hi TSTypeBuiltin guifg=#81a1c1 gui=bold
hi TSVariableBuiltin guifg=#d08770


highlight Normal guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none
hi IndentGuidesOdd  guibg=none ctermbg=none
hi IndentGuidesEven guibg=none ctermbg=none

highlight LspDiagnosticsDefaultError guifg=#bf616a gui=bold
highlight LspDiagnosticsDefaultWarning guifg=#ebcb8b

hi GreenSign guibg=#A3BE8C guifg=#3B4252
hi BlueSign guibg=#88C0D0 guifg=#3B4252
hi RedSign guibg=#BF616A guifg=#3B4252
hi PurpleSign guibg=#B48EAD guifg=#3B4252

" nvim-compe
highlight CompeDocumentation guibg=#3b4252
