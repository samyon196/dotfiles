set laststatus=2
" Status line
" Modes:
set statusline+=%#NoneBg#\ 
set statusline+=%#StatusWhite#%{(mode()=='n')?'\ \ ':''}
set statusline+=%#StatusDarkGreen#%{(mode()=='i')?'\ \ ':''}
set statusline+=%#StatusDarkYellow#%{(mode()=='R')?'\ \ ':''}
set statusline+=%#StatusDarkMagenta#%{(mode()=='v')?'\ \ ':''}
set statusline+=%#StatusWhite#%{(mode()=='c')?'\ \ ':''}
" Git:
set statusline+=%#NoneBg#%=        " Switch to the right side
set statusline+=%l/%L:%c
set statusline+=%#NoneBg#\ %t
set statusline+=%{&modified?'*':''}\ 
set statusline+=%y\ 
set statusline+=\ 
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar
