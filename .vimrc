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
Plug 'matze/vim-move'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'

" Color schemes
Plug 'altercation/vim-colors-solarized'
"Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

"-------------------------------------------------
"    Main settings 
"-------------------------------------------------
let g:mapleader=','
set autoread

"let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

set number
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

set hlsearch
set incsearch
set ignorecase
set cursorline

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

set encoding=utf-8
set termencoding=utf-8

"-------------------------------------------------
"    Plugins settings
"-------------------------------------------------
" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Easymotion
map <Leader> <Plug>(easymotion-prefix)

" Move 
let g:move_key_modifier = 'C'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_nr = 1

"-------------------------------------------------
"    Mappings
"-------------------------------------------------
imap jj <Esc>


" map <alt+n> to navigate through tabs
for c in range(1, 9)
	exec "set <A-".c.">=\e".c
	exec "map \e".c." <A-".c.">"

	let n = c - '0'
	exec "map <M-". n ."> ". n ."gt"
endfor
