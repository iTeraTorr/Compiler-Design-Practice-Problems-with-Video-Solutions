%{
#include<stdio.h>
%}

letter [a-zA-z]
digit [0-9]

%%

\n yylineno++;
#include<{letter}+(\.{letter}*)?>       {printf ("%s", yytext); printf("\tPREPROCESSOR\n");}

auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|unsigned|main     {printf ("%s", yytext); printf("\tKEYWORD\n");} 						

[{};,()]   {printf ("%s", yytext); printf("\tSEPERATOR\n");}						

[+-/=*%]   {printf ("%s", yytext); printf("\tOPERATOR\n");}						

([a-zA-Z][0-9])+|[a-zA-Z]* {printf ("%s", yytext); printf("\tIDENTIFIER\n");}    

{digit}+ {printf ("%s", yytext); printf("\tINTEGER\n");}

\"({letter}|{digit}|" ")*\"     {printf ("%s", yytext); printf("\tSTRING CONSTANT\n");}
. ; 

%%

int yywrap()								
{
return 1;
}
/*Main function*/
int main(void)
{
yylex();
return 0;
}