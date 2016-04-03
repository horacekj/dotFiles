scriptencoding utf-8

" Files encoding
set encoding=utf-8
set fileencoding=utf-8

" Set visuals
set ruler
set number
set cursorline

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Plugins
execute pathogen#infect()

set paste

syntax on

" Special characters
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<

" Color shceme
colorscheme elflord

" tab = 4 spaces
set shiftwidth=4
set tabstop=4

" Do not expand tabuls
set noexpandtab

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" move accross splits with CTRL+hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Split window vertically
nmap <leader>v <C-w>v<C-w>l
" Split window horizontally
nmap <leader>s <C-w>s<C-w>j

" save as root
cmap w!! %!sudo tee > /dev/null %

" clear last search
noremap <silent><Leader>/ :nohls<CR>

" reload vimrc after save
au BufWritePost .vimrc so ~/.vimrc

" resize windows
map <c-n> <c-w>4<
map <c-m> <c-w>4>

" thtml as html syntax
au BufRead,BufNewFile *.thtml setfiletype html

" color column at 80 characters
set colorcolumn=80
