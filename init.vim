"                _                                                  _       _ _               _           
"               | | ___ _ __ ___  _ __ ___   ___                   (_)_ __ (_) |_      __   _(_)_ __ ___  
"            _  | |/ _ \ '__/ _ \| '_ ` _ \ / _ \                  | | '_ \| | __|     \ \ / / | '_ ` _ \ 
"           | |_| |  __/ | | (_) | | | | | |  __/                  | | | | | | |_   _   \ V /| | | | | | |
"            \___/ \___|_|  \___/|_| |_| |_|\___|                  |_|_| |_|_|\__| (_)   \_/ |_|_| |_| |_|
" 
"                                                                                        created with figlet
"filetype indent on
"syntax on
"set tabstop=4 softtabstop=4
"set shiftwidth=4
"set expandtab
"set number
"set relativenumber
"set nohlsearch
"set smartindent
"set nowrap
"set nobackup
"set undodir=~/.config/nvim/undo_dir
"set undofile
"set guicursor=
"set scrolloff=6
"set incsearch
"set laststatus=2
"set background=dark
"set encoding=UTF-8
"https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
"
"
"       TESTING GIT PUSHES AND MERGES 14:25 on 16-08-2022
"
"
lua <<EOF
vim.api.nvim_command('filetype indent on')
vim.api.nvim_command('syntax on')
vim.api.nvim_command('set guicursor=')
vim.opt.hlsearch = false
vim.opt.tabstop = 4 
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.number= true
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.backup = false
vim.opt.undodir = '/home/jerome/.config/nvim/undo_dir'
vim.opt.undofile = true
vim.opt.scrolloff = 6
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.background = 'dark'
vim.opt.fileencoding = 'utf-8'
vim.opt.completeopt = {"menu", "menuone", "noselect"}
EOF
"let python_highlight_all = 1
" let g:python_host_prog = '/usr/bin/python'


" Everything that's in between the plug call will be used as a plug-in when calling the .vimrc "
" ------------------------------------------------------------------------------------------------------------------------------------
"                                                               PLUGINS INSTALLATION
" ------------------------------------------------------------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
" NeoVim specific plugins : Completion, LSP and snippets
Plug 'hrsh7th/nvim-cmp'                                 " Baseline completion engine
Plug 'hrsh7th/cmp-buffer'                               " Completion for the buffer
Plug 'hrsh7th/cmp-path'                                 " Completion for the path
Plug 'hrsh7th/cmp-cmdline'                              " Completion for commandline in nvim
Plug 'hrsh7th/cmp-nvim-lsp'                             " Completion for the LSP engine
Plug 'L3MON4D3/LuaSnip'                                 " Snippets engine, just to tab complete blocks of boilerplate code of text
Plug 'rafamadriz/friendly-snippets'                     " a bunch of snippets to use
Plug 'neovim/nvim-lspconfig'                            " Neovim Language Server Protocol
Plug 'williamboman/nvim-lsp-installer'                  " Bootstraps all of the LSP for you with doing much
"
" Vim practicals
Plug 'jremmen/vim-ripgrep'                              " Search for words in files of the cwd, works really well!
Plug 'tpope/vim-fugitive'                               " Git plugin, to flow better with vim
Plug 'lervag/vimtex'                                    " Plugin to use latex in neovim
Plug 'jrihon/mutineer.vim'                              " Makes (un)commenting smoother!
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']} "MarkDownPreview when writing a .md file 
Plug 'grimme-lab/orca.vim'                              " syntax detection for orca input filetypes
Plug 'akinsho/toggleterm.nvim'                          " Toggle a floating terminal
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " FuzzyFinder, works great!
Plug 'junegunn/fzf.vim'                                 " fzf, has to be added
Plug 'tmsvg/pear-tree'                                  " autcomplete pairs of brackets, quotes ...
Plug 'mbbill/undotree'                                  " whenever you save something, it goes to the undo directory
"Plug 'vim-utils/vim-man'                                " View man pages in a vim-buffer. Grep for the man pages.
"
" Vim visuals : colors, typefaces, motion
Plug 'morhetz/gruvbox'                                  " the best colorscheme in the world --ThePrimeagen
Plug 'folke/tokyonight.nvim'                            " TOKIIOOOOOOOOOOOOO
Plug 'itchyny/lightline.vim'                            " Customize the status bar through this plugin
Plug 'yuttie/comfortable-motion.vim'                    " Plugin to make scrolling smoother.
Plug 'preservim/nerdtree'                               " navigate with vim through your filetree
Plug 'ap/vim-css-color'                                 " whenever you use rgba or hexcode in your scripts, this highlights the colourcode as that colour
Plug 'ryanoasis/nerd-fonts'                             " nerd fonts
Plug 'ryanoasis/vim-devicons'                           " nerd fonts for vim specifically
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'          " used with devicons but I don't know what for
Plug 'junegunn/goyo.vim'                                " distraction free reading
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"Plug 'jrihon/uwu.vim'
"
" https://github.com/kyazdani42/nvim-tree.lua ---> new file tree system with nerdfonts, in lua
" https://github.com/nvim-lualine/lualine.nvim --> new status line system in lua
" https://github.com/wbthomason/packer.nvim -----> new package manager for nvim in lua
call plug#end()

let g:SOURCEFILE = "~/.config/nvim/init.vim"
" ------------------------------------------------------------------------------------------------------------------------------------
"                                                           MY FIRST REMAPS
" ------------------------------------------------------------------------------------------------------------------------------------
" INFO : <CR> means you enter the Return key when using the command, so it activates immediately
" INFO : <SPACE> is used so the command is unfinished and we can input what we need
" INFO : <bar> is the same as using a pipe symbol '|'

" New leader key, used later when remapping, which is <SPACE>
"let mapleader = " "

lua <<EOF
vim.g.mapleader = " "
EOF


" Whenever a new split is created with :vsplit
"let g:netrw_browse_split=2
"let g:netrw_banner = 0
"let g:netrw_winsize = 25


" -----------------------------------
" WINDOW OR BUFFER RELATED REMAPS
lua <<EOF
vim.g.netrw_browse_split=2
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.api.nvim_set_keymap("n", "<leader>h", ":wincmd h<CR>", {noremap=true}) -- shift from left window to right window
vim.api.nvim_set_keymap("n", "<leader>l", ":wincmd l<CR>", {noremap=true}) -- shift from right window to left window
vim.api.nvim_set_keymap("n", "<leader>k", ":wincmd k<CR>", {noremap=true}) -- shift from bottom window to top window
vim.api.nvim_set_keymap("n", "<leader>j", ":wincmd j<CR>", {noremap=true}) -- shift from top window to bottom window
vim.api.nvim_set_keymap("n", "<leader>+", ":vertical resize +15<CR>", {noremap=true}) -- resize larger
vim.api.nvim_set_keymap("n", "<leader>-", ":vertical resize -15<CR>", {noremap=true}) -- resize smaller
-- Open fzf.vim in a :vsplit
vim.api.nvim_set_keymap("n", "<silent> <Leader>vs", ":vsplit <Bar> :wincmd l <Bar> :Files <CR>", {noremap=true})
EOF
" shift from left window to right window
"nnoremap <leader>h :wincmd h<CR>
" shift from right window to left window
"nnoremap <leader>l :wincmd l<CR>
" shift from bottom window to top window
"nnoremap <leader>k :wincmd k<CR>
" shift from top window to bottom window
"nnoremap <leader>j :wincmd j<CR>
" resize the window manually "
"nnoremap <silent> <Leader>+ :vertical resize +15<CR>
"nnoremap <silent> <Leader>- :vertical resize -15<CR>
" whenever you open a new vertical split, open a new file in the new split
" The ':Files' command requires the FZF plugin
"nnoremap <silent> <Leader>vs :vsplit <Bar> :wincmd l <Bar> :Files <CR>


" -----------------------------------
" Access specific files of my system
"nnoremap <leader>bash :e $HOME/.bashrc<CR>
"nnoremap <leader>nvim :e $HOME/.config/nvim/init.vim<CR>
"nnoremap <leader>tmux :e $HOME/.tmux.conf<CR>
"nnoremap <leader>so :source $HOME/.config/nvim/init.vim<CR>
lua <<EOF
vim.api.nvim_set_keymap("n", "<leader>nvim", ":e $HOME/.config/nvim/init.vim<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>tmux", ":e $HOME/.tmux.conf<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>bash", ":e $HOME/.bashrc<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>so", ":source $HOME/.config/nvim/init.vim<CR>", {noremap=true})
EOF


" -----------------------------------
" LaTeX Remaps
" Go down visual lines when the :set wrap has been called, so mainly used in LaTex
"autocmd BufNewFile,BufRead *.tex,*.txt call SetMovementsInLatex()
" If the current file we are working is, is a *.tex filetype, 
"       then set the wrap on to have all the text in the terminal without sidescrolling
"       then set the linebreak on to leave words whole
"autocmd BufNewFile,BufRead *.tex,*.txt set wrap
"autocmd BufNewFile,BufRead *.tex,*.txt set linebreak
" Whenever I open a .tex filetype, remap the movement keys to jump visual lines
"function! SetMovementsInLatex() abort
"    nnoremap <expr> j v:count ? 'j' : 'gj'
"    nnoremap <expr> k v:count ? 'k' : 'gk'
"    vnoremap <expr> j v:count ? 'j' : 'gj'
"    vnoremap <expr> k v:count ? 'k' : 'gk'
"endfunction

lua <<EOF
-- In LaTeX files, set linebreak and wrap text around terminal column limits
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, { pattern = {"*.tex", "*.txt"}, command = [[set wrap]]})
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, { pattern = {"*.tex", "*.txt"}, command = [[set linebreak]]})

-- function to reset movement mappings in LaTex
function SetMovementsInLatex()
vim.api.nvim_set_keymap("n", "j", "v:count ? 'j' : 'gj'", {expr = true, noremap=true})
vim.api.nvim_set_keymap("n", "k", "v:count ? 'k' : 'gk'", {expr = true, noremap=true})
vim.api.nvim_set_keymap("v", "j", "v:count ? 'j' : 'gj'", {expr = true, noremap=true})
vim.api.nvim_set_keymap("v", "k", "v:count ? 'k' : 'gk'", {expr = true, noremap=true})
end
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, { pattern = {"*.tex", "*.txt"}, command = [[ lua SetMovementsInLatex() ]]})
EOF

" -----------------------------------
" MISSCELANIOUS
lua <<EOF
vim.api.nvim_set_keymap("n", "<leader>u", ":UndotreeShow<CR>", {noremap=true}) -- shows undo tree
vim.api.nvim_set_keymap("n", "<leader>rg", ":Rg<SPACE>", {noremap=true}) -- RipGrep remap
-- Clip selection from visual mode
vim.api.nvim_set_keymap("v", "<leader>pp", ":%w !xclip -selection clipboard<CR><CR> :echo 'Selection clipped!'<CR>", {noremap=true}) -- Copy to clipboard
EOF

" shows undo tree, whichs shows the history of what you've done
"nnoremap <leader>u :UndotreeShow<CR>
" RipGrep remap "
"nnoremap <leader>rg :Rg<SPACE>
" Copy Visual Selection to system's clipboard. requires 'xclip'
"vnoremap <leader>pp :%w !xclip -selection clipboard<CR><CR> :echo "Selection clipped!"<CR>
"autocmd BufNewFile,BufRead * call XclipExists()
" Function that $(which xclip), to be used in the copy to clipboard macro
"function! XclipExists() abort
"    if !executable("xclip")
"        echom "You need to install xclip in order to copy to clipboard!"
"    endif
"endfunction

" Toggle the quickfix list open and closed, often used in LaTeX
"nnoremap <leader>c :call QuickfixToggle()<cr>
lua <<EOF
vim.api.nvim_create_autocmd({"BufWrite", "BufEnter"}, { pattern = {"*.tex"}, command = [[ let g:quickfix_is_open = 1 ]]})
function QuickfixToggle()
    if vim.g.quickfix_is_open == 1 then
        vim.cmd[[ cclose ]]
        vim.g.quickfix_is_open = 0
    else
        vim.cmd[[ copen ]]
        vim.g.quickfix_is_open = 1
    end
end
vim.api.nvim_set_keymap("n", "<leader>c", ":lua QuickfixToggle()<CR>", {noremap=true}) -- Toggle QuickFixList in LaTeX files

EOF
" custom variable we make. This is to say that whenever the Quickfix list is open, we close it with the remap
"autocmd BufWrite,BufEnter *.tex let s:quickfix_is_open = 1
"function! QuickfixToggle() abort
"    if s:quickfix_is_open
"        cclose
"        let s:quickfix_is_open = 0
"    else
"        copen
"        let s:quickfix_is_open = 1
"    endif
"endfunction

" If the filetype is cobol (for some *.lib files), remove highlighting
lua <<EOF
function FuckCobol()
    if vim.opt.filetype:get() == 'cobol' then
        vim.cmd[[ syntax off ]]
    end
end
vim.api.nvim_create_autocmd({"BufEnter"}, { pattern = {"*.lib"}, command = [[ :lua FuckCobol() ]]})
EOF

"autocmd BufEnter *.lib call FuckCobol()
"function! FuckCobol() abort
"    if &filetype == 'cobol'
"        syntax off
"    endif
"endfunction


" ------------------------------------------------------------------------------------------------------------------------------------
"                                                               PLUGINS CONFIGURATION
" ------------------------------------------------------------------------------------------------------------------------------------

" ------------------------------------------------------------------
" MUTINEER CONFIGURATION
" ------------------------------------------------------------------
" normal mode and visual mode remap to allow single and multiline commenting
"nnoremap <leader>m :Mutineer<CR> 
"vnoremap <leader>m :Mutineer<CR> 
"vnoremap <leader>M :MutineerBlock<CR> 
"
"let g:SpasticCursorMovementToggle = 1

lua <<EOF
vim.api.nvim_set_keymap('n', '<leader>m', ':Mutineer<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>m', ':Mutineer<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>M', ':MutineerBlock<CR>', {noremap = true})
vim.g.SpasticCursorMovementToggle = 1
EOF

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
lua <<EOF
function SetSchemeGruvBox()
vim.g.gruvbox_italic = 1
vim.g.gruvbox_contrast_dark = 'hard'
vim.g.gruvbox_hls_cursor = 'purple'
vim.g.gruvbox_invert_selection = 0
vim.g.gruvbox_italicize_comments = 1
vim.cmd[[colorscheme gruvbox]]
end

--SetSchemeGruvBox()
EOF
"function SetSchemeGruvBox() abort
"    let g:gruvbox_italic=1
"    let g:gruvbox_contrast_dark='hard'
"    let g:gruvbox_hls_cursor='purple'
"    let g:gruvbox_invert_selection=0
"    autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
"    let g:gruvbox_italicize_comments=1
"    
"    colorscheme gruvbox
"    
"endfunction
"call SetSchemeGruvBox()


" ------------------------------------------------------------------
" TOKIONIGHT CONFIGURATION
" ------------------------------------------------------------------
lua <<EOF
function SetSchemeTokio()
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_keywords = false
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_transparent = true
vim.g.tokyonight_dark_sidebar = false
vim.g.tokyonight_dark_float = true
--vim.g.tokyonight_colors = { cyan : "#FF00FF"}
-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
end

SetSchemeTokio()
EOF

" ------------------------------------------------------------------
" RIPGREP CONFIGURATION
" ------------------------------------------------------------------
" $ sudo apt install ripgrep
" to get this plugin to work
"if executable('rg')
"    let g:rg_derive_root='true'
"endif
lua <<EOF
function RipGrepCheck()
    if vim.fn.executable('rg') == 1 then
        vim.g.rg_derive_root = true
    end
end
RipGrepCheck()
EOF



" ------------------------------------------------------------------
" LIGHTLINE CONFIGURATION
" ------------------------------------------------------------------
" check this video https://dev.to/jhooq/how-to-fix-github-permission-denied-publickey-fatal-could-not-read-from-remote-repository-1l5i
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
      \ 'component': {
      \   'helloworld': 'Hello, '. hostname() .'!'
      \ },
      \ }


" Removes the middle parts of the lightline, so it looks like it is see through;  https://github.com/itchyny/lightline.vim/issues/168
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle



" ------------------------------------------------------------------
" FZF CONFIGURATION
" ------------------------------------------------------------------
" remap fzf ':Files' to call the function :Files. FZF to search in cwd or child directories
nnoremap <C-p> :Files <CR>
" remap fzf ':Buffers' function so we can access whichever files are in our buffer
nnoremap <C-b> :Buffers <CR>
" disable the :Windows command because I hate it when I shift+w inadvertedly when I just want to write to the buffer
" This actually maps the :W to :write !!
command! -nargs=* W w
command! -nargs=* Wq wq
" Remap of fat fingers command
"command! -nargs=* Wq wq

" DO THE FOLLOWING IF YOU WANT TO BE ABLE TO FIND HIDDEN FILES WHEN USING :Files 
" -g : matching pattern (In this case "", which is empty or None)
" --unrestricted : searches all filetypes except .gitignores, .ignore etc.
" --depth : how far you can go with searching into your directories (in this case 3)
" Add the following to your >> ~/.bashrc
"     ## Fuzzy Finder
"     export FZF_DEFAULT_COMMAND='ag -g "" --depth 3 --unrestricted'
"     export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

" install the following "$ sudo apt install silversearcher-ag"
"if !executable("ag")
"    echo "install silversearcher-ag through :"
"    echo "$ sudo apt install silversearcher-ag"
"endif
lua <<EOF
-- install the following "$ sudo apt install silversearcher-ag"
if vim.fn.executable('ag') == 0 then
    print("install silversearcher-ag through :\n$ sudo apt install silversearcher-ag")
end
EOF



" ------------------------------------------------------------------
" NERDTree CONFIGURATION / VIM DEV-ICONS
" ------------------------------------------------------------------
" verticalsplit a window and open the NERDTree, then resize it
"nnoremap <leader>nw :vnew <bar> :Ex <bar> :vertical resize 90<CR> ----- " This line has been improved with the NERDTree plugin
nnoremap <leader>nw :NERDTree <bar> :vertical resize 60<CR>

" Make hidden files visible, this does make the filetree a bit bloated, so maybe we can create a Toggle for this
" To toggle hidden files in NERDTree, the map setting (NERDTreeMapToggleHidden)  is defaulted as I ( shift + i)
" let g:NERDTreeShowHidden = 1
" The icons do not have brackets around them anymore in NERDTree
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable = 1


" nerdtree-symbols
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ' '
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}  " Initialise the dictionary here to then add the extensions
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pdf'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['gz'] = ' '
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sh'] = ' '
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tex'] = 'TeX'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['cpp'] = 'C'

" nerdtree-highlighting
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExtensionHighlightColor = {} " Needed to initialise the dictionary to add colours
let s:VIMgreen = "019733"
let s:PDFred = "FE405F"
let s:MDblue = "44788E"
let s:TEXlightGreen = "31B53E"
let g:NERDTreeExtensionHighlightColor['vim'] = s:VIMgreen
let g:NERDTreeExtensionHighlightColor['tex'] = s:TEXlightGreen
let g:NERDTreeExtensionHighlightColor['pdf'] = s:PDFred
let g:NERDTreeExtensionHighlightColor['md'] = s:MDblue



" ------------------------------------------------------------------
" VIMTEX CONFIGURATION
" ------------------------------------------------------------------
" Only this makes VimTex compile. Found on ':help VimTex'
"
"$ sudo apt install latexmk
"



" ------------------------------------------------------------------
" COMFORTABLE MOTION CONFIGURATION
" ------------------------------------------------------------------
"  https://github.com/yuttie/comfortable-motion.vim ; check for default mappings
"  C-d and C-u are used for going up and down. 
"  C-f is for going a full page up, C-b has been remapped to :Buffers. But generally I don't even use these so it does not matter
"  Comfie motion is acive, but the default settings are in use and that's just fine
"let g:comfortable_motion_no_default_key_mappings = 1
"nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
"nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>
lua <<EOF
-- This is a very ugly work around, but it would not work as a keymap setting
vim.g.comfortable_motion_no_default_key_mappings = 1
vim.cmd[[nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>]]
vim.cmd[[nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>]]
--vim.api.nvim_set_keymap("n", "<silent> <C-d>", ":call comfortable_motion#flick(100)<CR>", {noremap = true})
--vim.api.nvim_set_keymap("n", "<silent> <C-u>", ":call comfortable_motion#flick(-100)<CR>", {noremap = true})
EOF





" ------------------------------------------------------------------
" ORCA.VIM
" ------------------------------------------------------------------
lua <<EOF
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, { pattern = {"*.inp"}, command = [[ set filetype=orca ]]})
EOF
"autocmd BufRead,BufNewFile *.inp set filetype=orca

" ------------------------------------------------------------------
" GOYO.VIM ----- DISTRACTION FREE SCREEN
" ------------------------------------------------------------------

lua <<EOF
vim.g.goyo_width = 160
EOF
"let g:goyo_width = 160
"let g:goyo_height = 
" :Goyo     --> ON
" :Goyo!    --> OFF



" ------------------------------------------------------------------
" TOGGLETERM.NVIM ----- LUA CONFIG
" ------------------------------------------------------------------
lua <<EOF
require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = 20,
  open_mapping = [[<C-\>]],
  -- on_open = fun(t: Terminal), -- function to run when the terminal opens
  -- on_close = fun(t: Terminal), -- function to run when the terminal closes
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  direction = 'float', -- 'vertical' | 'horizontal' | 'window' | 'float'
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'curved', -- 'single' | 'double' | 'curved' 
    width = 160,
    height = 40,
    winblend = 0,
    highlights = {
     border = "Normal",
     background = "Normal",
    }
  }
}
EOF



" ------------------------------------------------------------------
" CMP (COMPLETION) CONFIGURATION
" ------------------------------------------------------------------

" source : https://github.com/hrsh7th/nvim-cmp
lua <<EOF
  -- Symbols that are LSP-related
  -- find more here : https://www.nerdfonts.com/cheat-sheet
  -- When you have installed the font, go the your Terminal Preferences and change the font there!

  local kind_icons = {
    Text = "",
    Method = "",
    Function = "",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "ﴯ",
    Interface = "",
    Module = "",
    Property = "ﰠ",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = ""
  }

  -- Snippet configuration
  require("luasnip.loaders.from_vscode").lazy_load()


  -- Function used in SuperTab
  local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  end

  -- Setup nvim-cmp with LSP config and snippets
  local cmp = require('cmp')
  local lspconfig = require('lspconfig')
  local luasnip = require('luasnip')



  -- COMPLETION SETUP
  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-j>'] = cmp.mapping.select_next_item(),
      ['<C-k>'] = cmp.mapping.select_prev_item(),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-x>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

      -- SuperTab Set-up from Chris@Machine https://www.youtube.com/watch?v=GuIcGxYqaQQ
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        elseif has_words_before() then          -- has_words_before() function called here
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),
    }),
    -- Docs : https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance 
    formatting = {
      format = function(entry, vim_item)
        -- Kind icons
        vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
        -- Source
        vim_item.menu = ({
          buffer = "[File]",
          path = "[Path]",
          nvim_lsp = "[LSP]",
          luasnip = "[LuaSnip]",
          nvim_lua = "[Lua]",
          latex_symbols = "[LaTeX]",
        })[entry.source.name]
        return vim_item
      end
    },
    sources = cmp.config.sources({
      { name = 'luasnip' }, -- For luasnip users.
      { name = 'nvim_lsp' },-- Added source from cmp_nvim_lsp
      { name = 'buffer'},
      { name = 'path'},
      -- { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }),
  }) -- FINAL BRACKET OF THE CMP.SETUP

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

EOF

" Sidenote : https://www.youtube.com/watch?v=6F3ONwrCxMg&t=1300s  , the
" init.lua file in a different directory
" ------------------------------------------------------------------
" LSP INSTALLER  CONFIGURATION
" ------------------------------------------------------------------
"SETUP
"The recommended way of setting up your installed servers is to do it through nvim-lsp-installer.
"By doing so, NVIM-LSP-INSTALLER WILL MAKE SURE TO INJECT ANY NECESSARY PROPERTIES BEFORE CALLING LSPCONFIG'S SETUP FUNCTION FOR YOU.
"You may find a minimal example below. To see how you can override the default settings for a server, refer to the Wiki.
"
"Make sure you don't also set up your servers directly via lspconfig (e.g. require("lspconfig").clangd.setup {}), as this will cause servers to be set up twice!
lua <<EOF

  local status_ok, _ = pcall(require, 'lspconfig')
  if not status_ok then
      return
  end

  local signs = {
    { name = "DiagnosticsSignError", text = ""},
    { name = "DiagnosticsSignWarn", text = ""},
    { name = "DiagnosticsSignHint", text = ""},
    { name = "DiagnosticsSignInfo", text = ""},
      }

  for _, sign in ipairs(signs) do 
      vim.fn.sign_define(sign.name, {texthl = sign.name, text = sign.text, numhl = ""})
  end

  -- Add additional capabilities supported by nvim-cmp
  -- LOAD CAPABILITIES AS A FINAL STEP
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

  -- Start the set up of the installer
  local lsp_installer = require("nvim-lsp-installer")
  -- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
  -- or if the server is already installed).
  lsp_installer.on_server_ready(function(server)
      local opts = {
          capabilities = capabilities -- READ IN CAPABILITIES
          }
      -- If you want to have specific configurations per language server, this is the place to have it
  
      -- (optional) Customize the options passed to the server
      -- if server.name == "tsserver" then
      --     opts.root_dir = function() ... end
      -- end
  
      -- This setup() function will take the provided server configuration and decorate it with the necessary properties
      -- before passing it onwards to lspconfig.
      -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
      server:setup(opts)
  end)

  -- Include the servers you want to have installed by default below
  local servers = { "pyright", "texlab", "sumneko_lua", "vimls", }
  
  for _, name in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found and not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end

  -- Add settings to the icons we use when installing
  lsp_installer.settings({
      automatic_installation = true, -- automatically install newly detected version
      ui = {
          icons = {
              server_installed = "✓",
              server_pending = "➜",
              server_uninstalled = "✗",
          }
      }
  })

  -- Enable some language servers with the additional completion capabilities offered by nvim-cmp
  -- EDIT : This is handled by lsp_installer table below
  -- local servers = {'pyright', 'texlab', 'sumneko_lua'}
--  for _, lsp in ipairs(servers) do
--      lspconfig[lsp].setup{}
--  --      -- on_attach = my_custom_on_attach,
--  --      capabilities = capabilities,
--  --    }
--  end


EOF

" ------------------------------------------------------------------
" LSP (LANGUAGE SERVER PROTOCOL) CONFIGURATION
" ------------------------------------------------------------------
lua <<EOF
local opts = { noremap=true, silent=true }
-- go to defintion remap
vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
EOF



"                                                                                      __ _       
"                                                                                     / _(_)_ __  
"                                                                                    | |_| | '_ \ 
"                                                                                    |  _| | | | |
"                                                                                    |_| |_|_| |_|
