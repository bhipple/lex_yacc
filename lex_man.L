%{
#include <stdlib.h>
#include <stdio.h>

int numbers = 0;
%}

%%
integer         printf("Found keyword integer!\n");
\n              ECHO;

[0-9]+          {
                    ++numbers;
                    printf("Saw the number %s; seen %d numbers so far", yytext, numbers);
                }
