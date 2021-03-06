if ! [ -x "$(command -v vim)" ]; then
    echo 'Error: vim is not installed.' >&2
    sudo apt-get update
    apt-get install vim
fi

mkdir -p .vim/colors

curl -s https://raw.githubusercontent.com/dsolstad/vim-wombat256i/master/colors/wombat256i.vim --output ~/.vim/colors/wombat256i.vim

echo syntax on > ~/.vimrc
echo colorscheme wombat256i >> ~/.vimrc
echo set number >> ~/.vimrc

if [ -f ~/.vimrc ]; then
    echo Successfully Finished
else
    echo Unsuccessfully Finished
fi
