%{
#include<stdio.h>
%}


%%
^bb[ab]*$    { printf("Valid\n"); }
^[ab]+$      { printf("Invalid\n"); }
\n           { /* Ignore newlines */ }
.            { /* Ignore other characters */ }
%%

int yywrap(void) {}
int main() {
    yylex();
    return 0;
}