set tabstop=2 
set softtabstop=2
set nowrap
set sidescroll=5
set listchars+=precedes:<,extends:>
set autoindent
set expandtab

syntax on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set tags=tags

set number
set cursorline
:highlight Cursorline cterm=bold ctermbg=255
set hlsearch
set ignorecase
set smartcase
set showmatch

set laststatus=2
set statusline=
set statusline+=%m
set statusline+=%y
set statusline+=\ %F
set statusline+=%{StatuslineGit()}
set statusline+=%=
set statusline+=%l
set statusline+=\ %L

let g:zig_fmt_autosave = 0

function! GitBranch()
  let l:dir=expand('%:p:h')
  return system("git -C ".l:dir." rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  ('.l:branchname.') ':''
endfunction
