#!/bin/bash

#Install Vundle, plugin manager
if [ -f "$HOME/.vim/"]; then
	echo "Vundle already installed!"	
else
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
#Push my custom vimrc into the used vimrc
if [ -f "$HOME/.vimrc" ]; then
	echo "Moving old vimrc to .bak"
	mv $HOME/.vimrc $HOME/.vimrc.bak
fi
	cp .vimrc $HOME/.vimrc
	echo "New .vimrc added!"

#installing the plugins	
echo ":BundleInstall" | vim
echo "Sucess! Praise be to the hula-hooping penguins!"
#echo "Success! vim-Clang will not work unless you have clang installed under" vim-clang removed for compatiblity
#echo "/usr/lib/llvm-3.8/lib"
#echo "note: if you're running debian (and possibly ubuntu) you might need to move'libclang-3.8.so.1' to 'libclang.so', because that's what the vim-clang plugin depends on!"
