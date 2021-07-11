syntax on
set number
set relativenumber
set mouse=a
set clipboard=unnamed
set ignorecase
set showcmd
set ruler
set encoding=utf-8
set showmatch
set incsearch
set ts=4    
set sw=4
set autoindent
set updatetime=100 "para integarcion con git"
set splitright
set splitbelow
let mapleader = " "
imap ñl <Esc>

nmap <leader>so :source ~\appdata\local\nvim\init.vim <cr>
nmap <leader>op :e ~\appdata\local\nvim\init.vim <cr>
nmap <leader>w :w <cr>
nmap <leader>q :q <cr>

"Autocompletar signos...
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap } ``<Esc>i
inoremap {<cr> {}<Esc>i<cr><cr><esc>ka<tab>

call plug#begin('~\appdata\local\nvim\plugged\')
" TEMAS
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim' 

" AUTOCOMPLETADO
Plug 'vim-scripts/AutoComplPop'

" GESTION DE ARCHIVOS
Plug 'preservim/nerdtree'
"icons 
Plug 'ryanoasis/vim-devicons'

"COMENTARIOS
Plug 'tpope/vim-commentary'

" GIT INTEGRACION
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'kablamo/vim-git-log'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
"MOSTRAR COLORES AL ASIGNARSE
Plug 'lilydjwg/colorizer'

"INDENTADO
Plug 'yggdroot/indentline'

" COMPLETADO PARA HTML
"emmemattn/emmet-vimt
Plug 'mattn/emmet-vim'


"DISEÑO Y TEMAS PARA BARRA INFERIOR 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"FORMATEAR  
Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'branch': 'release/0.x'
\ }

" JAVASCRIPT
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" snippets para javascript
Plug 'grvcoelho/vim-javascript-snippets'
" dependencias para vim-javascript-snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'


call plug#end()

" Comentarios
noremap <leader>/ :Commentary<cr>


nmap <leader>nt :NERDTreeFind<cr>
nmap <leader>py <Plug>(Prettier)
map <leader><tab> :NERDTreeToggle<cr>

let g:NERDTreeIgnore=[]
  
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#autoformat=1


colorscheme onedark 

let g:airline_theme = 'dark_minimal' 
let g:airline_left_sep = "\ue0b4"
let g:airline_right_sep = "\ue0b6"
 
 


" movimiento entre paneles con alt+hjkl
nnoremap <a-h> <C-\><C-n><C-w>h
nnoremap <a-j> <C-\><C-n><C-w>j 
nnoremap <a-k> <C-\><C-n><C-w>k 
nnoremap <a-l> <C-\><C-n><C-w>l 
nnoremap <a-h> <C-w>h
nnoremap <a-j> <C-w>j
nnoremap <a-k> <C-w>k
nnoremap <a-l> <C-w>l

" turn terminal to normal mode with espace
tnoremap <Esc> <C-\><C-t>

" open terminal on ctrl+;
function! OpenTerminal()
	" split term://bash
	split term://PowerShell
	resize 15 
endfunction

noremap <c-t> :call OpenTerminal()<CR>
