" Prompt for a command to run
map <Leader>mp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>ml :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>mi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>mq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>mx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>mz :call VimuxZoomRunner()<CR>
