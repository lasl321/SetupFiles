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
cp $FILES_HOME/Git/_gitconfig ~/.gitconfig

if [ ! -e ~/.gitconfig ]
then
    echo ".gitconfig could not be created"
    exit 1
fi
