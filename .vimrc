" CUSTOM MAPPINGS
imap jj <Esc>
imap jww <Esc> :w<CR>
imap jwq <Esc> :wq<CR>
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start

" FORMATTING
inoremap { {<CR>}<Esc>ko
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap <% <%%><left><left>

" VIM-PLUG SETUP
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'tomasiser/vim-code-dark'

call plug#end()

" PLUGIN SETUP
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let NERDTreeQuitOnOpen=1

" SETUP
set syntax=on
set background=dark
set number
colorscheme codedark
