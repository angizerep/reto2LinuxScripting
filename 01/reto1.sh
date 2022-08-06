#! /bin/bash
if  [ -d "01/foo/dummy" ] || [ -d "01/foo/empty" ] 
    then
        echo "Error: Directory dummy or empty already exists!";
    elif [  -d "01/foo" ] 
        then
            echo "Error: Directory foo already exists!";
        else
            echo "Puede crear todo";
            mkdir 01/foo && mkdir 01/foo/dummy && mkdir 01/foo/empty;
            echo "Me encanta bash!!" > 01/foo/dummy/file1.txt && touch 01/foo/dummy/file2.txt;
            cat 01/foo/dummy/file1.txt > 01/foo/dummy/file2.txt;
            mv 01/foo/dummy/file2.txt 01/foo/empty; 
fi