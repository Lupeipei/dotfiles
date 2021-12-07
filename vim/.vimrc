" Add fzf installed by Homebrew
set runtimepath+=/usr/local/opt/fzf

" Add the dein installation directory into runtimepath
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')

  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/denite.nvim')

  call dein#add('mattn/emmet-vim')
  call dein#add('junegunn/fzf.vim')

  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-rails')
  call dein#add('tpope/vim-eunuch')

  call dein#add('eugen0329/vim-esearch')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('cormacrelf/vim-colors-github')

  call dein#add('preservim/nerdtree')

  call dein#add('tpope/vim-ruby')
  call dein#add('posva/vim-vue')
  call dein#add('fatih/vim-go')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" disable up, down, leaf, right
" normal mode
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" visual mode
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" copy & paste to system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>yy "+yy
vnoremap <leader>y "+y
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" switch buffer, delete buffer
nnoremap bn :bn<cr> " next
nnoremap bp :bp<cr> " previous
nnoremap bd :bd<cr> " destroy

" remap suspend
nnoremap <c-s> :suspend<cr>

" select word
map <space> viw*<c-c>

" edit and source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

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
map <leader>n :NERDTreeToggle<cr>
map <leader>r :NERDTreeFind<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let vim_markdown_preview_github=1
let g:vim_markdown_preview_browser="Google Chrome"
let vim_markdown_preview_hotkey='<C-m>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" go-settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_autosave = 1
let g:go_imports_autosave = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-f> :Files<CR>

set grepprg=rg\ --vimgrep\ --smart-case\ --follow

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Denite
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bebug when cannot install pynvim

" if has('python_compiled')
"   echo 'compiled with Python 2.x support'
"   if has('python_dynamic')
"     echo 'Python 2.x dynamically loaded'
"   endif
" endif

" if has('python3_compiled')
"   echo 'compiled with Python 3.x support'
"   if has('python3_dynamic')
"     echo 'Python 3.x dynamically loaded'
"   endif
" endif

set pyxversion=3

" Autocomplete
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  " Vim 8 only
  pythonx import pynvim 
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
let g:deoplete#enable_at_startup = 1

call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" Define alias
call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#var('file/rec/git', 'command', ['git', 'ls-files', '-co', '--exclude-standard'])

