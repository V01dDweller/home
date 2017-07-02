" _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" 
"           V01dDweller's vimrc
"             lucan88@msn.com
"
" _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

" Line numbers
set number

" Ruler
set ruler

" Show commands as they are typed in command mode
set showcmd

" Indentation and tab handling
set shiftwidth=2
set softtabstop=4
set expandtab 
set autoindent

" Filetype indenting
filetype indent on

" break long lines at words (display)
set linebreak

" Disable backups
set nobackup 
set nowritebackup

" Search highlighting, find while I type
set hlsearch incsearch 

" Search ignores case, unless mix case
set ignorecase smartcase 

" New windows to appear below or to the right
set splitright
set splitbelow

" Color Scheme
color elflord
set background=dark
syntax enable

" Highlight current line
set cursorline
highlight CursorLine term=bold cterm=bold ctermbg=darkblue

" Line numbers only in active side of split window
autocmd WinEnter * :setlocal number
autocmd WinLeave * :setlocal nonumber

" Always-on IP address highlighting
syntax match ipaddr /\(\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)\.\)\{3\}\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)/
highlight link ipaddr Identifier

" F6 - Toggle AnsiEsc plug-in
nnoremap  <F6> :AnsiEsc<CR>

" F7 - Toggle scrollbind 
nnoremap <F7> :windo :1<CR>:windo setlocal scb! <CR>

" F8 -  Fully disable auto-indent
nnoremap <F8> :setl noai nocin nosi inde=<CR>

" F9 - Show me column 80
nnoremap <F9> :set colorcolumn=80<CR>

" F10 - Stop showing me column 80
nnoremap <F10> :set colorcolumn=<CR>

" Make Colorcolumn lightgreen
highlight ColorColumn ctermbg=lightgreen guibg=lightgreen

" Netrw settings
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_list_hide = ".svn,.git,.*.swp"

" F4 - Toggle Lexplore/netrw
nnoremap <F4> :Lexplore<CR>

" Enable plugins
filetype plugin on

" _/_/_/_/ Vim-only options _/_/_/_/
"
" For the SVN plug-in
let g:svnj_custom_statusbar_ops_hide = 1
let g:svnj_browse_cache_all = 1

" Enable the mouse when available
set mouse=a

" Disable Vi compatibility
set nocompatible
