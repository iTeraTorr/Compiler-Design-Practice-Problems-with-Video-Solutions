
%{
#include<stdio.h>
int flag=0;
%}

%%

A+B+    {flag = 1;} // pattern representing any number of As followed by any number of Bs
.+ ; // Dot represents any character but newline
\n {return 0;} // On getting newline character we return 0

%%

int yywrap(){
  return 1; // return non-zero value indicates that input is exhausted now
}

/*Main function*/
int main(void){
  yylex(); // recognizes tokens from the input stream and returns them to the parser
  if(flag == 1){
    printf("String accepted\n");
  }else{
    printf("String NOT accepted\n");
  }
  return 0;
}
/*Code written by Tarun Gupta, 180001059
Video explaination link: https://drive.google.com/file/d/1RkrfLNq3dTMjqezSfqTTgkP52U57OXp3/view?usp=sharing
*/
