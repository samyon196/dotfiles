set laststatus=2
" Status line
" Modes:
set statusline+=%#StatusWhite#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#StatusDarkGreen#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#StatusDarkYellow#%{(mode()=='R')?'\ \ REPLAC\ ':''}
set statusline+=%#StatusDarkMagenta#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#StatusDarkRed#%{(mode()=='c')?'\ \ COMAND\ ':''}
" Git:
set statusline+=%#StatusDarkBlue#\ %t
set statusline+=%{&modified?'*':''}\ 
set statusline+=%l/%L:%c
set statusline+=%=
set statusline+=%y\ 
set statusline+=\ 
"set statusline+=%=        " Switch to the right side
"set statusline+=%l        " Current line
"set statusline+=/         " Separator
"set statusline+=%#TextRed#%L        " Total lines
"set statusline+=%m
"call timer_start(1000, {-> execute(':let &l:ro = &l:ro')}, {'repeat': -1}) " auto update status line :)
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar
