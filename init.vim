syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
filetype indent on
set smartindent
set nowrap
set smartcase
set nobackup
set undodir=~/.config/nvim/undo_dir
set undofile
set guicursor=
set incsearch
set laststatus=2
set background=dark
set encoding=UTF-8

let python_highlight_all = 1
" let g:python_host_prog = '/usr/bin/python'

" Everything that's in between the plug call will be used as a plug-in \ "
"   when calling the ~/.vimrc "
call plug#begin('~/.config/nvim/plugged')

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
"Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'valloric/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end()


if executable('rg')
    let g:rg_derive_root='true'
endif

" ignore searches in ctrlp "
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" New leader key, used later when remapping "
let mapleader = " "

" for the file tree "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

" ag is fast enough that CtrlP doesn't need to cach "
let g:ctrlp_use_caching = 0

" use macro's to make it easier to switch windows and list the directory and
" stuff "
" :vsp is vertical window, ctrl + WD is for switching between windows "

" bunch of remaps "

" shift from left window to right window "
nnoremap <leader>h :wincmd h<CR>
" shift from right window to left "
nnoremap <leader>l :wincmd l<CR>
" split to windows ( :wincmd v ) and adjust the size of it
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
" shows undo tree, whichs shows the history of what you've done "
nnoremap <leader>u :UndotreeShow<CR>
" ripgrep to search for shit "
nnoremap <leader>ps :Rg<SPACE>
" resize the window manually "
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" YCM "
" The best part." 
" You can jump to functions or definitions "
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

" LIGHTLINE CONFIG
" check this video https://dev.to/jhooq/how-to-fix-github-permission-denied-publickey-fatal-could-not-read-from-remote-repository-1l5i
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
      \ 'component': {
      \   'helloworld': 'Hello, Jérôme!'
      \ },
      \ }
" https://github.com/itchyny/lightline.vim/issues/168 "
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle
