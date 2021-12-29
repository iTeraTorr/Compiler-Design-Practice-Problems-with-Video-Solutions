%{
#include<stdio.h>
int count_scanf=0,count_printf=0; // initialising the counters
%}

%%
"scanf"	{ count_scanf++;} // pattern recognising scanf and incrementing its count
"printf" { count_printf++;} // pattern recognising printf and incrementing its count
. ;
\n ;
%%

int yywrap(){
  return 1; // return non-zero value indicates that input is exhausted now
}

int main()
{
	yyin=fopen("Q2in.c","r"); // input file inputCfile.c

  yylex(); // recognizes tokens from the input stream and returns them to the parser

  //printing number of printf and scanf in the file
	printf("Number of scanfs=%d\nNumber of printfs=%d\n",count_scanf,count_printf);
  return 0;
}

/*
Code written by Tarun Gupta, 180001059
Video explaination link: https://drive.google.com/file/d/14r3b48DFy4w87lsipPh9y9ptHYii5XOz/view?usp=sharing
*/
