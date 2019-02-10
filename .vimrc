" CUSTOM MAPPINGS
imap jj <Esc>
set tabstop=2
set shiftwidth=2

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
inoremap { {<CR>}<Esc>ko
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>

" VIM-PLUG SETUP
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-endwise'


call plug#end()
