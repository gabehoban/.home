set encoding=utf-8
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'raimondi/delimitmate'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'godlygeek/tabular'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-syntastic/syntastic'
Plugin 'Chiel92/vim-autoformat'
Plugin 'prettier/vim-prettier'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'itchyny/vim-gitbranch'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-unimpaired'
Plugin 'easymotion/vim-easymotion'
Plugin 'sheerun/vim-polyglot'
Plugin 'neoclide/jsonc.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'psliwka/vim-smoothie'
Plugin 'djoshea/vim-autoread'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'baskerville/vim-sxhkdrc'
Plugin 'dracula/vim', { 'as': 'dracula' }
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-python/python-syntax'
Plugin 'fatih/vim-go', { 'tag': '*' }
call vundle#end()

filetype plugin indent on

syntax enable " Syntax highlighting
set background=dark
colorscheme onedark
set termguicolors
set backup
set undofile
set undodir=~/.vimtmp/undo//
set backupdir=~/.vimtmp/backup//
set directory=~/.vimtmp/swap//

if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

set number " Line numbers
set autoindent " Auto indenting
set incsearch " search as characters are entered
set hlsearch "highlight matches
set tabstop=8
set softtabstop=2
set expandtab
set autoindent
set shiftwidth=4
set linebreak
set autoread
set backspace=indent,eol,start
set smartcase
set ignorecase
set relativenumber
set lazyredraw
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
set cursorline
syntax on

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme ='onedark'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" Neocomplete Settings
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
            \ }
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
noremap <space> za
