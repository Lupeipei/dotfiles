" Add fzf installed by Homebrew
set runtimepath+=/usr/local/opt/fzf

call plug#begin()
  Plug 'mattn/emmet-vim'
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree'

  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'

  Plug 'eugen0329/vim-esearch'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'cormacrelf/vim-colors-github'

  Plug 'posva/vim-vue'
  Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

  " neosnippet
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  let g:deoplete#enable_at_startup = 1

  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

syntax on

set nocompatible

" show row number
set number

" " show related row number
" set relativenumber

" wrap
set wrap

" auto read
set autoread

" auto save when switch buffer
set autowrite

" autoindent
set autoindent

" use intelligent indentation for C
set smartindent

" highlight search results
set hlsearch

" set shiftwidth
set shiftwidth=2

" encoding
set encoding=utf-8

" configure tabwidth and insert spaces instead of tabs
set tabstop=2        " tab width is 4 spaces
set shiftwidth=2     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" highlight matching braces
set showmatch

" for Rails projects
set directory=tmp,/tmp

" prompt when switching buffer
set hidden

" default python version 3
" set pyxversion=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" disable up, down, leaf, right
" normal mode
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" visual mode
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

" insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" copy & paste to system clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
nnoremap <Leader>yy "+yy
vnoremap <Leader>y "+y
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

" switch buffer, delete buffer
nnoremap bn :bn<CR> " next
nnoremap bp :bp<CR> " previous
nnoremap bd :bd<CR> " destroy

" suspend
nnoremap <C-s> :suspend<CR>

" highlight all occurrences of selected word 
nnoremap <Space> viw*<Esc>

" edit and source vimrc
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Themes, font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

set background=light
let g:github_colors_soft = 1
let g:github_colors_block_diffmark = 0

colorscheme github
let g:airine_theme="github"
let g:lightline = { 'colorscheme': 'github' }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = 'left'
let NERDTreeShowHidden = 1
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>r :NERDTreeFind<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

set grepprg=rg\ --vimgrep\ --smart-case\ --follow

