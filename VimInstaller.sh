if ! [ -x "$(command -v vim)" ]; then
    echo 'Error: vim is not installed.' >&2
    sudo apt-get update
    apt-get install vim
fi

mkdir .vim .vim/colors

curl https://raw.githubusercontent.com/dsolstad/vim-wombat256i/master/colors/wombat256i.vim --output .vim/colors/wombat256i.vim

echo syntax on > ~/.vimrc
echo colorscheme wombat256i >> ~/.vimrc