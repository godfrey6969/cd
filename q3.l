%{
#include<stdio.h>
%}

%%
ab+$ {printf("Valid\n");}
ba+$ {printf("Valid\n");}
[a-b]* {printf("Invalid");}
%%

int yywrap(void) {}
int main() {
    yylex();
    return 0;
}