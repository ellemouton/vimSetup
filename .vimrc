" `nocompatibility` Switches from the default
" Vi-compatibility mode and enables useful Vim functionality. 
set nocompatible

" Turn on syntax highlighting.
syntax on

" Show line numbers.
set number 

" Show relative line numbers.
set relativenumber 

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can " sometimes be convenient.
set mouse+=a

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" colour scheme other than the default
colorscheme desert

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" Maintain undo history between sessions
set undofile 
set undodir=~/.vim/undodir

" Prevent you from using arrow keys
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" enable plugin
filetype plugin indent on

" Write content of a file automatically if you call :make (vim-go uses this) 
set autowrite

" Use shorter key mappings to switch between vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" open splits to the right and bottom (instead of default left and top)
set splitbelow
set splitright

" Markdown previewer. Autoupdate after write to buffer.
let g:preview_markdown_vertical = 1
let g:preview_markdown_auto_update = 1

"""""""""""""""""""""""""""""""""""""""""
"""""""" Golang specific settings 
"""""""""""""""""""""""""""""""""""""""""

" Run goimports along gofmt on each save
let g:go_fmt_command = "goimports" 

" Automatically get signature/type info for object under cursor
let g:go_auto_type_info = 1	

" autocomplete prompt whenever you press dot (.)
" au filetype go inoremap <buffer> . .<C-x><C-o>

" make it easier to jump between errors and quickfix list
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a ::cclose<CR>

"""""""""NERDTree plugin specific command
:nnoremap <C-g> :NERDTreeToggle<CR>


"========= CTRLP fzf ====================
set runtimepath^=~/.vim/bundle/ctrlp.vim
