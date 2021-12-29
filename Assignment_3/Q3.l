%{
#include<stdio.h>
int pi=0,ni=0,pf=0,nf=0;
%}

letter [a-zA-z]
digit [0-9]
%%
[-][0-9]* {ni++;}
[+]?[0-9]*  {pi++;}
[+]?[0-9]*[/|.][0-9]* {pf++;}
[-]?[0-9]*[/|.][0-9]* {nf++;}
.|\n ; 
%%

int yywrap()								
{
return 1;
}
/*Main function*/
int main(void)
{
yylex();
printf("Positive Integers: %d\nNegative Integers: %d\nPositive Fraction: %d\nNegative Fraction: %d\n",pi,ni,pf,nf);
return 0;
}
