" Use the Solarized Dark theme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu

set tabstop=4
set shiftwidth=4

syntax on
filetype off
" set auto ident
set autoindent

" Enable line numbers
set number

" Ignore case of searches
set ignorecase

" hide swap files
let g:netrw_list_hide= '.*\.sw[po]$'
set shortmess=atI
set noswapfile


" Automatic commands
if has("autocmd")
	" Treat Gemfile and .ru files as ruby
	autocmd BufNewFile,BufRead Gemfile,*.ru setf ruby
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
	" Treat .coffee
	autocmd BufNewFile,BufRead *.coffee setfiletype coffee syntax=coffee
	autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=4 expandtab
endif

" Enable file type detection
filetype plugin indent on

command! E Explore
