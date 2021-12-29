%{
#include<stdio.h>
int single=0;
int multi=0;
%}
START "/*"
END "*/"
SIMPLE [^*]
SPACE [ \t\n]
COMPLEX "*"[^/]
%s newstate
%%
"//"(.*[ \t]*.*)*[\n]+    {single++;}
{START}                    {yymore();BEGIN newstate;}
<newstate>{SIMPLE}        {yymore();BEGIN newstate;}
<newstate>{COMPLEX}      {yymore();BEGIN newstate;}
%<newstate>{SPACE}        {yymore();BEGIN newstate;}
<newstate>{END}             {multi++;BEGIN 0;}
.|\n ;
%%
int yywrap()								
{
return 1;
}
int main()
{
yylex();
printf("Single Line Comments: %d\nMultiline Comments: %d\n",single,multi);
return 0;
}