#!/bin/sh
rm -f heater lex.yy.c y.tab.c
lex heater.L
yacc -d heater.Y
gcc lex.yy.c y.tab.c -o a.out
./a.out
