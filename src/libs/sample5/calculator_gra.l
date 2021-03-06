%{
    #include <stdio.h>
%}
%token NUMBER NAME
%%

statement: NAME '=' expression
        |  expression {
            printf("= %d\n", $1);
        }
        ;
expression: expression '+' NUMBER {
                $$ = $1 + $3;
            }
        |   expression '-' NUMBER {
            $$ = $1 - $3;
        }
        |   NUMBER {
            $$ = $1;
        }
        ;
%%