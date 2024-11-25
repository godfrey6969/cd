/*lex program to count number of words*/
%{ 
#include<stdio.h> 
#include<string.h> 
int counta = 0; 
int countb = 0; 
int extra = 0;
%} 

%% 
a {counta++;}
b {countb++;}
[^ab\n] {extra++;}
\n {if(extra > 0) {printf("Invalid\n"); counta=0; countb=0; extra=0;}
    else if(counta > 0 && countb > 0) {printf("Invalid\n"); counta=0; countb=0; extra=0;}
    else {printf("Valid\n"); counta=0; countb=0; extra=0;}
}
%% 

int yywrap(void){} 

int main() 
{ 
	// The function that starts the analysis 
	yylex(); 

	return 0; 
} 
