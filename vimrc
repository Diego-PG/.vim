execute pathogen#infect()

set number

syntax enable
colorscheme basic-dark

set lines=30 columns=107
set colorcolumn=80

let mapleader=" " "Remapear leader key a espacio
map <leader>s :source ~/.vimrc<CR>| "Refrescar vimrc

autocmd BufWritePre * :%s/\s\+$//e "Eliminar espacios en blanco al guardar

set showmatch "Resaltar los parentesis

set noshowmode	"No muestra el modo de vim en la parte de abajo. Lo que quitado
		"porque ya aparece en lightline

"Word wrap
set wrap "Activar word wrap
set linebreak "Saltar de linea solo en ciertos caracteres
set nolist "List bloquea lo anterior
"No escirbir el word wrap al fichero, solo mostrarlo por pantalla
set textwidth=0
set wrapmargin=0

"Moverse entre las lineas de la pantalla y no las reales. Mejor no utilizar j
"y k porque puede acarrear problemas con shortcuts y plugins.
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
"nmap j gj
"nmap k gk


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
