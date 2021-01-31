if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-fugitive'
Plug 'jremmen/vim-ripgrep'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'eslint/eslint'
call plug#end()
let g:user_emmet_leader_key=','

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
"set a ruler at 80"
set colorcolumn=100
set mouse=a
highlight ColorColumn ctermbg=0 guibg=lightgrey

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
