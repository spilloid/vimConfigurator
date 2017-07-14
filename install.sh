#!/bin/bash

#Install Vundle, plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Push my custom vimrc into the used vimrc
if [ -f "$HOME/.vimrc" ]; then
	echo "Moving old vimrc to .bak"
	mv .vimrc .vimrc.bak
fi
	mv .vimrc $HOME/.vimrc
	echo "New .vimrc added!"

#installing the plugins	
echo ":BundleInstall" | vim

echo "Success! vim-Clang will not work unless you have clang installed under"
echo "/usr/lib/llvm-3.8/lib"
echo "note: if you're running debian (and possibly ubuntu) you might need to move'libclang-3.8.so.1' to 'libclang.so', because that's what the vim-clang plugin depends on!"
