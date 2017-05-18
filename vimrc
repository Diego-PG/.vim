set number

syntax enable
colorscheme basic-dark

set lines=30 columns=110
set colorcolumn=80

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

autocmd BufWritePre * :%s/\s\+$//e "Eliminar espacios en blanco al guardar

set showmatch "Resaltar los parentesis
