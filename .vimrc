set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

" for display to display properly
set nocompatible
set t_Co=256

" custom user preferences
" remaps first
let mapleader=" "
inoremap jk <esc>
set number
set hidden  " hide buffers instead of closing them
set nobackup
set title
set noswapfile
set tabstop=4
set shiftwidth=4
set autoindent
set preserveindent
set shiftround
set smarttab
set autoread
set foldenable
set foldlevelstart=7
set foldnestmax=10
nnoremap <space> za " space key now opens/closes folds
set smartcase
set showmatch
set hlsearch
set incsearch

nnoremap <leader><space> :nohlsearch<CR>

if &t_Co > 2 || has("gui_running")
	" switch syntax highlighting on, when the terminal has colors
 	syntax on
endif

" for powerline
set laststatus=2
set showtabline=2

" file explorer
map <leader>k :E<cr>

" pathogen plugin manager
execute pathogen#infect()

autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" react via pathogen
let g:jsx_ext_required = 0

" colorschemes downloaded via pathogen
if &t_Co > 2 || has("gui_running")
	" switch syntax highligting on, when the terminal has colors
	syntax on
	colorscheme badwolf
endif


" CoVim via pathogen
let CoVim_default_name = "HACKER"
let CoVim_default_port = "8030"
