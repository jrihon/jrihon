filetype indent on
syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber
set nohlsearch
set smartindent
set nowrap
set nobackup
set undodir=~/.config/nvim/undo_dir
set undofile
set guicursor=
set scrolloff=6
set incsearch
set laststatus=2
set background=dark
set encoding=UTF-8

let python_highlight_all = 1
" let g:python_host_prog = '/usr/bin/python'


" Everything that's in between the plug call will be used as a plug-in when calling the ~/.vimrc "
" ------------------------------------------------------------------
"  VIM-PLUG BEGIN
" ------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

Plug 'jremmen/vim-ripgrep'                              " I do not even use this anymore
Plug 'tpope/vim-fugitive'                               " Git plugin, not github
"Plug 'vim-utils/vim-man'                                " View man pages in a vim-buffer. Grep for the man pages.
"Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " FuzzyFinder, works great!
Plug 'tmsvg/pear-tree'                                  " autcomplete pairs of brackets, quotes ...
Plug 'junegunn/fzf.vim'                                 " fzf, don't know why it's in here twice
Plug 'valloric/YouCompleteMe'                           " YouCompleteMe, autocomplete from buffer and programming lang
Plug 'mbbill/undotree'                                  " whenever you save something, it goes to the undo directory
Plug 'itchyny/lightline.vim'                            " the colored bar between the the buffer and the vim window
Plug 'morhetz/gruvbox'                                  " the best colorscheme in the world
Plug 'ap/vim-css-color'                                 " whenever you use rgba or hexcode in your scripts, this highlights the colourcode as that colour
Plug 'preservim/nerdtree'                               " navigate with vim through your filetree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'          " used with devicons but I don't know what for
Plug 'ryanoasis/vim-devicons'                           " nerd fonts
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'lervag/vimtex'                                    " Plugin to use latex in neovim; $ sudo apt install latexmk
call plug#end()
" ------------------------------------------------------------------
"  VIM-PLUG END
" ------------------------------------------------------------------


" ------------------------------------------------------------------
" BUNCH OF REMAPS "
" ------------------------------------------------------------------
" INFO : <CR> means you enter the Return key when using the command, so it activates immediately
" INFO : <SPACE> is used so the command is unfinished and we can input what we need
" INFO : <bar> is the same as using a pipe symbol '|'

" New leader key, used later when remapping "
let mapleader = " "

" Whenever a new split is created
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

" -----------------------------------
" WINDOW OR BUFFER RELATED REMAPS
" shift from left window to right window
nnoremap <leader>h :wincmd h<CR>
" shift from right window to left window
nnoremap <leader>l :wincmd l<CR>
" shift from bottom window to top window
nnoremap <leader>k :wincmd k<CR>
" shift from top window to bottom window
nnoremap <leader>j :wincmd j<CR>
" resize the window manually "
nnoremap <silent> <Leader>+ :vertical resize +15<CR>
nnoremap <silent> <Leader>- :vertical resize -15<CR>

" -----------------------------------
" Access specific files of my system
nnoremap <leader>bash :e $HOME/.bashrc<CR>
nnoremap <leader>nvim :e $HOME/.config/nvim/init.vim<CR>

" -----------------------------------
" MISSCELANIOUS
" shows undo tree, whichs shows the history of what you've done
nnoremap <leader>u :UndotreeShow<CR>
" ripgrep to search for stuff"
nnoremap <leader>ps :Rg<SPACE>




" ------------------------------------------------------------------
" TREESITTER CONFIGURATION
" ------------------------------------------------------------------
" Treesitter is disabled, as I did not like the colourscheme with python, too  much highlighting
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



" ------------------------------------------------------------------
" GRUVBOX CONFIGURATION
" ------------------------------------------------------------------
" Set your terminal's background to #1D2021 , to get the full gruvbox experience
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_hls_cursor='purple'
let g:gruvbox_invert_selection=0
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
let g:gruvbox_italicize_comments=1

colorscheme gruvbox

set guifont=Hack\ Nerd\ Font\ Complete\ 11



" ------------------------------------------------------------------
" RIPGREP CONFIGURATION
" ------------------------------------------------------------------
if executable('rg')
    let g:rg_derive_root='true'
endif



" ------------------------------------------------------------------
"  CTRL-P CONFIGURATION
" ------------------------------------------------------------------
" ignore searches in ctrlp "
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" ag is fast enough that CtrlP doesn't need to cach "
" let g:ctrlp_use_caching = 0



" -----------------------------------
" YOUCOMPLETEME CONFIGURATION
" -----------------------------------
" You can jump to functions or definitions that are located in different files by having your cursor over the called function
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>



" ------------------------------------------------------------------
" LIGHTLINE CONFIG
" ------------------------------------------------------------------
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


" Removes the middle parts of the lightline, so it looks like it is see through
" https://github.com/itchyny/lightline.vim/issues/168
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle



" ------------------------------------------------------------------
" FZF CONFIGURATION
" ------------------------------------------------------------------
" remap fzf ':Files' to call the function :Files. FZF to search in cwd or child directories
nnoremap <C-p> :Files <CR>
" remap fzf ':Buffers' function so we can acces whichever files are in our buffer
nnoremap <C-b> :Buffers <CR>



" ------------------------------------------------------------------
" NERDTree CONFIGURATION
" ------------------------------------------------------------------
" verticalsplit a window and open the NERDTree, then resize it
"nnoremap <leader>nw :vnew <bar> :Ex <bar> :vertical resize 90<CR> ----- " This line has been improved with the NERDTree plugin
nnoremap <leader>nw :NERDTree <bar> :vertical resize 90<CR>

" The following configurations are in conjuction with nerd fonts / dev-icons : 

" The icons do not have brackets around them anymore in NERDTree
let g:webdevicons_conceal_nerdtree_brackets = 1

" For some reason, only the first one works on my PopOS!, whereas they all work on my Ubuntu
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ' '
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pdf'] = 'PDF'
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['gz'] = ' '
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sh'] = ' '



" ------------------------------------------------------------------
" VIMTEX CONFIGURATION
" ------------------------------------------------------------------
" Only this makes VimTex autocomplete. Found on ':help VimTex'
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
