execute pathogen#infect()

set number

syntax enable
colorscheme basic-dark

set lines=30 columns=110
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
