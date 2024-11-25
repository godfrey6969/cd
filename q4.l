%{
#include<stdio.h>
%}
%%
[0-9] {printf("%s", yytext);}
. {}
%%
int yywrap(void) {}
int main() {
    yylex();
    return 0;
}