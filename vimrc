execute pathogen#infect()

set number

syntax enable
colorscheme basic-dark

set lines=30 columns=107
set colorcolumn=80

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

autocmd BufWritePre * :%s/\s\+$//e "Eliminar espacios en blanco al guardar

set showmatch "Resaltar los parentesis

set noshowmode	"No muestra el modo de vim en la parte de abajo. Lo que quitado
		"porque ya aparece en lightline

"
"Plugins
"

"lightline
set laststatus=2	"Para que funcione lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ }	"Tengo que pensar si merece la pena instalar la fuente powerline

"Nerdtree
let NERDTreeShowHidden=1 "Muestra archivos ocultos en NERDTree
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp'] "Ficheros ignorados
let NERDTreeWinSize = 20 "Modifico la anchura de NERDTree
nmap <leader>n :NERDTreeToggle<CR>| "Encender/apagar NERDTree
nmap <leader>j :NERDTreeFind<CR>| "Ir al fichero señalado en NERDTree
autocmd VimEnter * NERDTree "Abrir NEDRTree al encender vim
autocmd VimEnter * wincmd p "No centrar en el fichero de NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif| "Cerrrar NERDTree si es la unica ventana
