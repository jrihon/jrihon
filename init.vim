filetype indent on
syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set smartindent
set nohlsearch
set nowrap
set smartcase
set nobackup
set undodir=~/.config/nvim/undo_dir
set undofile
set guicursor=
set scrolloff=6
set incsearch
set laststatus=2
set background=dark
set encoding=UTF-8

"let python_highlight_all = 1
" let g:python_host_prog = '/usr/bin/python'

" Everything that's in between the plug call will be used as a plug-in \ "
"   when calling the ~/.vimrc "
call plug#begin('~/.config/nvim/plugged')

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
"Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tmsvg/pear-tree'
Plug 'junegunn/fzf.vim'
Plug 'valloric/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'lervag/vimtex'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end()


" Treesitter configuration
"lua <<EOF
"require'nvim-treesitter.configs'.setup {
"  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"  ignore_install = { "javascript" }, -- List of parsers to ignore installing
"  highlight = {
"    enable = true,              -- false will disable the whole extension
"    disable = { "c", "rust" },  -- list of language that will be disabled
"    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
"    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
"    -- Using this option may slow down your editor, and you may see some duplicate highlights.
"    -- Instead of true it can also be a list of languages
"    additional_vim_regex_highlighting = false,
"  },
"}
"EOF

" Gruvbox configs
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_hls_cursor='purple'
let g:gruvbox_invert_selection=0
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
let g:gruvbox_italicize_comments=1

colorscheme gruvbox


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

" bunch of remaps "

" shift from left window to right window "
nnoremap <leader>h :wincmd h<CR>
" shift from right window to left window"
nnoremap <leader>l :wincmd l<CR>
" shift from bottom window to top window "
nnoremap <leader>k :wincmd k<CR>
" shift from top window to bottom window "
nnoremap <leader>j :wincmd j<CR>
" split to windows ( :wincmd v ) and adjust the size of it
"nnoremap <leader>nw :vnew <bar> :Ex <bar> :vertical resize 90<CR>
nnoremap <leader>nw :NERDTree <bar> :vertical resize 90<CR>
" shows undo tree, whichs shows the history of what you've done "
nnoremap <leader>u :UndotreeShow<CR>
" ripgrep to search for shit "
nnoremap <leader>ps :Rg<SPACE>
" resize the window manually "
nnoremap <silent> <Leader>+ :vertical resize +15<CR>
nnoremap <silent> <Leader>- :vertical resize -15<CR>

" remap fzf ':Files' to the ctrlp.vim's ctrl+p So here we do 'ctrl' + 'p' keys call the function :Files, and afterwards we press 'Return' or 'Enter' with <CR>
nnoremap <C-p> :Files <CR>

" remap fzf ':Buffers' function so that we don't have to write it out
nnoremap <C-b> :Buffers <CR>
" acces different files in the system
nnoremap <leader>bash :e /home/jerome/.bashrc<CR>
nnoremap <leader>nvim :e /home/jerome/.config/nvim/init.vim<CR>

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

" Disable pear-tree
" let g:pear_tree_ft_disabled = ['python']

" VimTex YouCompleteMe

if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
