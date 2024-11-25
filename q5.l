%{
#include<stdio.h>    
#include <string.h>    
int curr = 0;
char *word = "abcd";
%}

%%
[a-zA-Z0-9]+ {printf("%s ", yytext); printf("%lu\n", strlen(yytext));}
. {}
%%

int yywrap(void) {}
int main() {
    yylex();
    return 0;
}