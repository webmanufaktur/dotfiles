
" Emmet
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css,less,sass,scss EmmetInstall


"let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
