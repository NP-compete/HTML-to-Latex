#!/bin/bash

# Clean
if [ "$1" == "clean" ] 
then
    rm lex.yy.c  
    rm out 
    rm output.tex 
    rm parser.tab.* 
# Go
elif [ "$1" == "run"  ]
then
    bison -d parser.y
    lex lexer.l
    gcc -o out parser.tab.c lex.yy.c
    ./out
else
    echo "Usage: ./run.sh function (clean|run)"
fi
