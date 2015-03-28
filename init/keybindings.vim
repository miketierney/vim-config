" Keybindings
" -----------

let mapleader = ","
let maplocalleader = ";"

" Gracefully handle holding shift too long after : for common commands
cabbrev W w
cabbrev Q q
cabbrev Wq wq
cabbrev Tabe tabe
cabbrev Tabc tabc

" Allow typos
cabbrev ew :wq
cabbrev qw :wq
cabbrev aw :wa

"set pastetoggle keybinding
set pastetoggle=<F2>

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Folding
" Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za

" "Refocus" folds
nnoremap <leader>z zMzvzz

" Make z0 recursively open whatever top level fold w're in, no matter where
" the cursor happens to be.
nnoremap z0 zCz0

" Split screen
map <leader>w   :vsp<CR>

" Do not scroll horizontally split window
nnoremap <C-W>s Hmx`` \|:split<CR>`xzt``

" Move between screens
map <leader>h   ^Ww
map <leader>l   ^W=
map <leader>j   ^Wj
map <leader>k   ^Wk

" Tabs
map <leader>te :tabedit<cr>
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Reload .vimrc
map <leader>rv  :source ~/.vimrc<CR>

" Undo/redo - Doesn't MacVim already have this?
map <D-z>       :earlier 1<CR>
map <D-Z>       :later 1<CR>

" Auto-indent whole file
nmap <leader>=  gg=G``
map <silent> <F7> gg=G`` :delmarks z<CR>:echo "Reformatted."<CR>

" Jump to a new line in insert mode
imap <D-CR>     <Esc>o

" Map jj to <Esc>
inoremap jj <Esc>

" Fast scrolling
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>
vnoremap <C-k> 10k
nnoremap <C-k> 10k
vnoremap <C-j> 10j
nnoremap <C-j> 10j

" File tree browser
map \\           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>

" Previous/next quickfix file listings (e.g. search results)
map <M-D-Down>  :cn<CR>
map <M-D-Up>    :cp<CR>

" Previous/next buffers
map <M-D-Left>  :bp<CR>
map <M-D-Right> :bn<CR>

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" 

" CtrlP
let g:ctrlp_map = '<leader>f'
let g:ctrlp_working_path_mode = 'ra'
map <c-p>       :CtrlPMRUFiles<CR>
map <leader>F   :<F5>CtrlP<CR>
map <leader>f   :<F5>CtrlP<CR>
" let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" File Navigation
"" Edit or view files in same directory as current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
" map <leader>v :view %%

" restart passenger for the current directory
map <leader>rst :!touch tmp/restart.txt<cr>

" clever trick that lets you effectively sudo !! after opnening a file in vim
cmap w!! w !sudo tee % >/dev/null

" Shorten the formatting commands.
vmap Q gq
nmap Q gqap

" ctags with rails load path
map <leader>rt :!bundle exec rails runner 'puts $LOAD_PATH.select{\|x\| x.include?(Dir.pwd) && x \!~ \%r{/(vendor\|spec)\b} }.join(" ")' \| xargs /usr/local/bin/ctags -R public/javascripts<CR>
map <leader>rT :!bundle exec rails runner 'puts $LOAD_PATH.select{\|x\| x.include?(Dir.pwd) && x \!~ \%r{/(vendor\|spec)\b} }.join(" ")' \| xargs bundle exec rdoc -f tags; /usr/local/bin/ctags --append -R public/javascripts<CR>

" Git blame
map <leader>g   :Gblame<CR>

" Comment/uncomment lines
" map <leader>/   <plug>NERDCommenterToggle

map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Run tests
map <leader>t :wa<CR>:RunTestLine<CR>
map <leader>T :wa<CR>:RunTest<CR>
map <leader>tt :wa<CR>:RunTestAgain<CR>

map <F12> :write<CR>:RunTest<CR>
imap <F12> <ESC><F12>
map <F11> :write<CR>:RunTestLine<CR>
imap <F11> <ESC><F11>
map <F10> :write<CR>:RunTestAgain<CR>
imap <F10> <ESC><F10>
map <F9> :write<CR>:RunTestPrevious<CR>
imap <F9> <ESC><F9>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" Easy access to the shell
map <Leader><Leader> :!

" Recalculate diff when it gets messed up.
nmap du :diffupdate<CR>

" Gundo.vim
map <leader>u :GundoToggle<CR>

" vim-blockle.vim
let g:blockle_mapping = '<Leader>l'
