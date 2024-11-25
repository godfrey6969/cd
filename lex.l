%option c++

%{
#include <iostream>
#include <string>

int i = 0;
%}

/* Rules Section */
%%
([a-zA-Z0-9])+ { i++; } /* Rule for counting number of words */

\n { std::cout << i << std::endl; i = 0; }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}