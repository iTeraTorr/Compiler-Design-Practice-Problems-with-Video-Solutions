%{
#include <stdio.h>
#include <stdlib.h>
int ch=0;
%}


%%
\n ;
([ ])+ ;
\t ;
. ch++;
%%

int yywrap(void)
{
	return 1;
}
 
int main()
{
	extern FILE *yyin;
	yyin = fopen("input.txt","r");
    yylex();

    printf("No. of characters = %d\n", ch);
     
}