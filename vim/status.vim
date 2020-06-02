function! GitDirty()
  return strlen(system("git status -s")) > 0?'*':''
endfunction

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  let l:branchdirty = GitDirty()
  return strlen(l:branchname) > 0?'  '.l:branchname.l:branchdirty.' >':''
endfunction

set laststatus=2
" Status line
" Modes:
set statusline+=%#StatusWhite#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#StatusDarkGreen#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#StatusDarkYellow#%{(mode()=='R')?'\ \ REPLAC\ ':''}
set statusline+=%#StatusDarkMagenta#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#StatusDarkRed#%{(mode()=='c')?'\ \ COMAND\ ':''}
" Git:
set statusline+=%#StatusDarkBlueBold#%{StatuslineGit()}
set statusline+=%#StatusDarkBlue#\ %t
set statusline+=%{&modified?'*':''}\ 
set statusline+=%#TextWhite#\ Hellothere\
set statusline+=%m\
set statusline+=%=
set statusline+=\ %y
set statusline+=TIME:\ %{strftime('%H:%M')}
set statusline+=\ 
"set statusline+=%=        " Switch to the right side
"set statusline+=%l        " Current line
"set statusline+=/         " Separator
"set statusline+=%#TextRed#%L        " Total lines
"set statusline+=%m
call timer_start(1000, {-> execute(':let &stl=&stl')}, {'repeat': -1}) " auto update status line :)
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar
