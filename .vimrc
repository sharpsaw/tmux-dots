" Depends on the Vim Addon Manager (which comes with sharpsaw/loop-dots )
let s:want = [
      \'github:benmills/vimux',
      \]
call vam#ActivateAddons(s:want, {'auto_install' : 1})

" Prompt for a command to run
map <Leader>rp :VimuxPromptCommand<CR>

" — This UI snarved from tslime.vim —
" Shoot selected text down there:
"vmap <Leader>t "ty :call VimuxRunCommand(@r."\n", 0)<cr>
" …and the current ¶ if nothing is selected:
"nmap <Leader>t vip<Leader>t
" TODO: :1,.yt…

" Run last command executed by VimuxRunCommand
map <Leader>rl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>ri :VimuxInspectRunner<CR>
" Close all other tmux panes in current window
map <Leader>rx :VimuxClosePanes<CR>
" Close vim tmux runner opened by VimuxRunCommand
map <Leader>rq :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <Leader>rs :VimuxInterruptRunner<CR>

" TODO: Acmeize this
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
