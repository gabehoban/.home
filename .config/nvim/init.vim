call plug#begin('~/.config/nvim/plugged')     
Plug 'morhetz/gruvbox'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'sainnhe/vim-color-forest-night'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'chrisbra/colorizer'
Plug 'tpope/vim-sleuth'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'sheerun/vim-polyglot'
Plug 'tmhedberg/SimpylFold'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } 
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ryanoasis/vim-devicons'
Plug 'rust-lang/rust.vim'
Plug 'prettier/vim-prettier'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'Chiel92/vim-autoformat'
Plug 'vim-syntastic/syntastic'
Plug 'godlygeek/tabular'
call plug#end()

let g:mkdp_auto_start = 1
let g:mkdp_markdown_css = '/Users/gabehoban/Documents/md.css'

let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

let g:livepreview_previewer = 'open -a Preview'
let g:livepreview_cursorhold_recompile = 0

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

set termguicolors
" colo palenight
set background=dark

hi Normal guibg=NONE ctermbg=NONE

syntax on

set nowrap
set noshowmode
set autoindent
set number relativenumber
set mouse=a

" Code Folding
set foldenable
set foldmethod=syntax
set foldlevel=99

let mapleader=","

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-s> :w<CR>
" Ω is alt + z
nnoremap Ω :Goyo<CR>

let g:python_highlight_all=1

let g:goyo_width = '80%'
" let g:goyo_height = '90%'

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

let g:go_def_mapping_enabled = 0
autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" autocmd VimEnter * Goyo 

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

source ~/.config/nvim/statusline.vim
source ~/.config/nvim/coc-config.vim
