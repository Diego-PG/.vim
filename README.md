Esta es mi configuración de Vim, esta pensada para funcionar en terminal y en
Linux.

Para  utilizar la configuración hay que clonar este repositorio y crear un link
del archivo vimrc al .vimrc de nuestro usuario. Por último, hay que iniciar y
actualizar los submodulos.

```Shell
cd ~
git clone https://github.com/Diego-PG/.vim.git
ln -s ~/.vim/vimrc ~/.vimrc
cd .vim
git submodule init
git submodule update
```

La configuración contiene plugins, gestionados con Pathogen y git (como
submodulos)
