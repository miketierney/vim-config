" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Pathogen and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.


" Pathogen (This must happen first.)
" --------

set nocompatible

call pathogen#infect()
call pathogen#helptags()

syntax on                       " Highlight known syntaxes
filetype plugin indent on


" Source initialization files
runtime! init/**.vim


let g:S = 0  "result in global variable S
function! Sum(number)
  let g:S = g:S + a:number
  return a:number
endfunction


" Machine-local vim settings - keep this at the end
silent! source ~/.vimrc.local
