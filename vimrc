call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath

" vim-surround - quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" ctrlp
Plug 'kien/ctrlp.vim'

" jshint
"Plug 'Shutnik/jshint2.vim'

" jsbeautify, need install npm jsbeautify
Plug 'maksimr/vim-jsbeautify'

" syntastic, syntax checking plugin
" manually install npm jshint
Plug 'scrooloose/syntastic'

" fugitive - git wrapper
Plug 'tpope/vim-fugitive'

" This is a simple script that shows a tabs-like list of buffers in the bottom of the window.
Plug 'vim-scripts/buftabs'

" Vim 7.0 added a new feature named Undo branches.
Plug 'mbbill/undotree'
" vim-indent-guides - Indent Guides is a plugin for visually displaying indent levels in Vim.
" <Leader>ig
Plug 'nathanaelkane/vim-indent-guides'

"ack - Run your favorite search tool from Vim, with an enhanced results list.
Plug 'mileszs/ack.vim'

" airline - Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" gitgutter - A Vim plugin which shows a git diff in the 'gutter' (sign column).
"Plug 'airblade/vim-gitgutter'

" Signify (or just Sy) is a quite unobtrusive plugin.
Plug 'mhinz/vim-signify'

" taglist, plugin is a source code browser plugin for Vim
Plug 'tkyeung357/taglist'

" Tagbar - is a Vim plugin that provides an easy way to browse the tags of the current file
Plug 'majutsushi/tagbar'

" vim-javascript - JavaScript bundle for vim, this bundle provides syntax and indent plugins.
Plug 'pangloss/vim-javascript'

" supertab - Perform all your vim insert mode completions with Tab
" Plug 'ervandew/supertab'

" YouCompleteMe - A code-completion engine for Vim
Plug 'Valloric/YouCompleteMe'

" vim-json - BETTER JSON FOR VIM
Plug 'elzr/vim-json'

" html5 - HTML5 + inline SVG omnicomplete function, indent and syntax for Vim.
Plug 'othree/html5.vim'

" vim-markdown - Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
Plug 'plasticboy/vim-markdown'

"vim-multiple-cursors - There have been many attempts at bringing Sublime Text's awesome multiple selection feature into Vim
" Ctrl-n | p | x 
Plug 'terryma/vim-multiple-cursors'

" SOLARIZED COLORSCHEME FOR VIM
Plug 'altercation/vim-colors-solarized'

call plug#end()

set encoding=utf-8
let mapleader=","           "Changes Leader key into a comma instead of a backslash
set nocompatible            "Prefents VIM from being nerfed into acting like VI
set viminfo='1000,f1,:1000,/1000
set history=500
set backspace=indent,eol,start "Backspace key won't move from current line
colorscheme solarized "default colorscheme

"------  Visual Options  ------
set guioptions=egmt         "remove toolbar, scrollbars
syntax on                   "Enables syntax highlighting
set nu                      "Enable Line Numbers
set wrap                  	"Disable word wrap
set linebreak
set nolist					"list disables linebreak
set vb                      "Visual bell instead of beeps
set ruler                   "Displays cursor position on bottom right of screen

"setlocal spell spelllang=en_us

"------  Behavior  ------
set tabstop=4               "tab = 4 spaces
set shiftwidth=4            "Indent to four spaces
set hidden                  "Switch between unsaved buffers w/o needing to save, preserves history
filetype indent on          "Syntax Highlight
filetype plugin on          "Needed for snipMate
set autoindent              "Autoindent
"set expandtab               "Use spaces instead of tabs
"Ignore these files when completing names
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,node_modules/*,*.min.js,*.map

"------  Moving Between Windows  ------
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>wo <C-w>o
nnoremap <Leader>wv <C-w>v<C-w>l
nnoremap <Leader>ws <C-w>s
nnoremap <Leader>ww <C-w><C-w>

"------  Buffers  ------
" Ctrl Left & Right move between buffers
noremap <silent> <C-left> :bprev<CR>
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-right> :bnext<CR>
noremap <silent> <C-l> :bnext<CR>
" Closes the current buffer
nnoremap <silent> <Leader>q :Bclose<CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Edit and Reload .vimrc files
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>


" ,p = Runs PHP lint checker on current file
map <Leader>p :! php -l %<CR>
" ,P = Runs PHP and executes the current file
map <Leader>P :! php -q %<CR>
" ,L = Toggle line numbers
map <Leader>L :set invnumber<CR>
" ,v = Paste
map <Leader>v "+gP
" ,c = Copy
map <Leader>c "+y



if has("gui_running")
    set cursorline                  "Highlight background of current line
    "autocmd VimEnter * TagbarOpen
	set background=dark "light
    " Show tabs and newline characters with ,s
    nmap <Leader>s :set list!<CR>
	set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×,eol:¬
    "Invisible character colors
    "highlight NonText guifg=#4a4a59
    "highlight SpecialKey guifg=#4a4a59
else
    set cursorline                  "Highlight background of current line
	let g:solarized_termcolors=256
	set background=dark
	set mouse=a						"This allows mouse scrolling in terminal, and selection of text
endif

if has("gui_macvim") "Use Experimental Renderer option must be enabled for transparency
	"set guifont=Monaco:h14
	"set noantialias
	"set transparency=15
    " Swipe to move between bufers :D
    map <silent> <SwipeLeft> :bprev<CR>
    map <silent> <SwipeRight> :bnext<CR>
	" OS X probably has ctags in a weird place
	" let g:tagbar_ctags_bin='/usr/local/bin/ctags'
endif

"------  Plugin Setting ------
"
"------  Vim easy align ------
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

"------  Special Xdebug Behavior ------
au BufNewFile, BufRead *.xt setf xt

"------  Searching  ------
set incsearch               "Search while typing
set ignorecase              "Case Insensitive Searching
set smartcase               "Lowercase = case insensitive, any uppercase = case sensitive
set hlsearch                "Highlight all search results

"Following line clears the search highlights when pressing Lb
nnoremap <leader>b :nohlsearch<CR>

" http://www.vim.org/scripts/script.php?script_id=2572
noremap <leader>a :Ack 
noremap <leader>A <C-w>j<C-w>c<C-w>l

let g:ackprg="ack -H --nocolor --nogroup --column --type-add php=.tpl"

"------  NERDTree Options  ------
let NERDTreeIgnore=['CVS','\.dSYM$']
let NERDTreeChDirMode=2     "setting root dir in NT also sets VIM's cd
noremap <silent> <Leader>n :NERDTreeToggle<CR>
" These prevent accidentally loading files while in the NERDTree panel
autocmd FileType nerdtree noremap <buffer> <c-left> <nop>
autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
autocmd FileType nerdtree noremap <buffer> <c-right> <nop>
autocmd FileType nerdtree noremap <buffer> <c-l> <nop>
"autocmd vimenter * if !argc() | NERDTree | endif " Open NERDTree if we're simply launching vim

"------  JsBeautify Options  ------
map <Leader>F :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer> <Leader>F :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <Leader>F :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <Leader>F :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <Leader>F :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <Leader>F :call CSSBeautify()<cr>

"------  Syntastic  -------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

autocmd BufNewFile,BufRead *.json set ft=json

" ----- undotree ---------
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" ----- buftab ---------
noremap <f1> :bprev<CR> 
noremap <f2> :bnext<CR> 
let g:buftabs_only_basename=1
let g:buftabs_marker_modified = "+"

"------  vim-airline  -------
set laststatus=2
set guifont=Source\ Code\ Pro\ for\ Powerline:h11 "make sure to escape the spaces in the name properly
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"------  tagbar  -------
nmap <F8> :TagbarToggle<CR>

"------  vim-javascript  -------
let g:javascript_enable_domhtmlcss = 1


"------  vim-multiple-cursors  -------
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
