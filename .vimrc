"-------------------------------------------------
"    Vim-plug plagin manager
"-------------------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Permanent plugins
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'

" Color schemes
Plug 'altercation/vim-colors-solarized'
"Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

"-------------------------------------------------
"    Main settings 
"-------------------------------------------------
let g:mapleader=','
syntax enable

"let g:solarized_termcolors=256
colorscheme solarised
set background=dark

set number
set expandtab
set tabstop=4

set hlsearch
set incsearch

"-------------------------------------------------
"    Plugins settings
"-------------------------------------------------
" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Easymotion
map <Leader> <Plug>(easymotion-prefix)

"-------------------------------------------------
"    Mappings
"-------------------------------------------------
imap jj <Esc>
