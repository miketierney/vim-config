let g:tern_show_signature_in_pum = 1
let g:tern_show_argument_hints = "on_hold"
set completeopt-=preview
autocmd FileType javascript map <buffer> gd :TernDef<cr>
