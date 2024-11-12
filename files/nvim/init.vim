let g:python3_host_prog = system('echo -n $(which python3)')

" encoding settings
set fenc=utf-8
set fencs=utf-8,iso-2022-jp,euc-jp,sjis
set enc=utf-8

" display settings
set title
set number
set laststatus=2
set statusline=%<%F%m%h%w\ %=[ENC=%{&fenc!=''?&fenc:&enc}]\ [FMT=%{&ff}]\ [TYPE=%Y]\ [CODE=0x%02B]\ [POS=%l/%L(%02v)]
set showmatch
set showcmd
set list
set listchars=tab:»-,trail:_,eol:↲,extends:»,precedes:«,nbsp:%
set visualbell
syntax on
"" remove highlights by typing esc key twice
nnoremap <ESC><ESC> :nohl<CR>

" backspace settings
set backspace=indent,eol,start

" file operation settings
set nobackup
set noswapfile
set hidden

" search settings
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrapscan

"indent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" clipboard settings
set clipboard+=unnamedplus

let mapleader = "\<Space>"
nnoremap <silent><unique> <Leader>c :<C-u>setlocal cursorline! cursorcolumn!<CR>
nnoremap <silent><unique> <Leader>nh :noh<CR>
nnoremap <silent><unique> <Leader>t :NERDTree<CR>

inoremap <silent><unique> jj <ESC>

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21
highlight LineNr     ctermfg=8

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_dir = expand('~/dotfiles/nvim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_dir = expand('~/dotfiles/nvim/toml')

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif

" Required:
set runtimepath+=~/dotfiles/nvim/dein/repos/github.com/Shougo/dein.vim


if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
