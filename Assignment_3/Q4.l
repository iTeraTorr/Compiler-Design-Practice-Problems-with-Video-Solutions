%{
#include "y.tab.h"
%}

%option noyywrap
%%

"if"                             {return IF;}
"<"|">"|"=="|"<="|">="|"!="      {return op;}
[0-9]+                           {return num;}
[a-z][a-zA-Z0-9_]*               {return id;}
\n                               {return NL;}
.                                {return yytext[0];}
%%
