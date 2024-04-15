" Options
"set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
"set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set cc=100
set noswapfile

" Tabs size
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
nmap <leader>us :set expandtab<CR>
nmap <leader>ut :set noexpandtab<CR>

filetype plugin indent on
syntax on

if has('termguicolors')
  set termguicolors
endif
set encoding=UTF-8

set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list

" =============================================================================
" Navigation
nmap <C-s> :w<CR>
nmap <C-q> :q<CR>

" Create splits
nmap th :split<CR>
nmap tv :vsplit<CR>
" Close splits and others
nmap tt :q<CR>

" Buffers control
map <C-m> :bnext<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
map <C-x> :bwipe<CR>

" =============================================================================
" Telescope
nnoremap <silent> <Space><Space> :Telescope find_files<CR>
nnoremap <silent>ff :Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>ft <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" =============================================================================
nmap <C-p> :NvimTreeToggle<CR>
nmap <C-f> :NvimTreeFindFile<CR>

" =============================================================================
"
" function! HighlightWordUnderCursor()
"     if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
"         exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
"     else
"         match none
"     endif
" endfunction
"
" autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()
