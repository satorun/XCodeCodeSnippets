#!/bin/sh
dir=$HOME/Library/Developer/Xcode/UserData/CodeSnippets
if [ -L $dir ]; then
    echo "symlink already exists"
    exit
elif [ -d $dir ]; then
    echo "copy files and remove old directory"
    cp $dir/* CodeSnippets/
    rm -r $dir
fi

ln -s $PWD/CodeSnippets $dir
echo "complete!"
