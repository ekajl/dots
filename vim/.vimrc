set nocompatible

filetype plugin on

" Visual
syntax on
set number
set cursorline
:highlight Cursorline ctermbg=255 cterm=bold

" Status Line
set laststatus=2
set statusline=
set statusline+=%m
set statusline+=%y
set statusline+=\ %F
set statusline+=%{StatuslineGit()}
set statusline+=%=
set statusline+=%l
set statusline+=\ %L

" File matching via :find
set path+=**
set wildmenu

" Tags / Completion
"
" ^]   - jump to tag under point
" g^]  - jump to ambig tag
" ^t   - jump back
" ^x^n - completion limited to current file
" ^x^f - file name completion
" ^x^] - tag completion only
" ^x   - ambig completion
command! Mktags !ctags -R .
set tags=tags

" makeprg / quickfixx
"
" configure the 'make' command
" set makeprg=make\ test
"
" Run :make
"  :cl     - list errors
"  :cn/:cp - nav forward/back
"  :cc#    - jump to err num
"
" Quickfix format
" <filename>|<line> col <col>|<message>

" Functions
function! GitBranch()
  let l:dir=expand('%:p:h')
  return system("git -C ".l:dir." rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?' ('.l:branchname.') ':''
endfunction
