#! /bin/bash
if [ -d "foo/dummy" ] || [ -d "foo/empty" ] 
then 
    echo "Error: Directory dummy or empty already exists!";
else
    if [  -d "foo" ] 
    then
            echo "Error: Directory foo already exists!";
    else
        echo "Puede crear todo";
        mkdir foo && mkdir foo/dummy && mkdir foo/empty;
        echo "Me encanta bash!!" > foo/dummy/file1.txt && touch foo/dummy/file2.txt;
        cat foo/dummy/file1.txt > foo/dummy/file2.txt;
        mv foo/dummy/file2.txt foo/empty; 
    fi
fi