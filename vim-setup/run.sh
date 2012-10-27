!/bin/sh

SCRIPT_HOME="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo \$SCRIPT_HOME = $SCRIPT_HOME

FILES_HOME=$SCRIPT_HOME/DotFiles
echo \$FILES_HOME = $FILES_HOME 

rm -rf $FILES_HOME
if [ -e $FILES_HOME ]
then
    echo "$FILES_HOME could not be deleted"
    exit 1
fi

git clone https://github.com/lasl321/DotFiles.git $FILES_HOME
cp $FILES_HOME/Vim/_vimrc ~/.vimrc
cp -R $FILES_HOME/Vim/vimfiles/* ~/.vim

if [ ! -e ~/.vimrc ]
then
    echo ".vimrc could not be created"
    exit 1
fi

if [ ! -e ~/.vim ]
then
    echo ".vim could not be created"
    exit 1
fi
