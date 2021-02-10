
" enable auto-save in .md (Markdown) files
autocmd FileType markdown set linebreak
autocmd FileType markdown set wrap
autocmd Filetype markdown let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "CursorHoldI"]


" augroup Markdown 
" Files with extension .md are processed as Ruby code
" autocmd!
" autocmd BufReadPre,FileReadPre *.md set ft=markdown linebreak
" augroup END
